FROM ubuntu:jammy

RUN apt update -y && apt upgrade -y

# Install system tools
RUN apt install -y --no-install-recommends \
    git \
    wget \
    curl \
    zip \
    unzip \
    apt-transport-https \
    ca-certificates \
    gnupg

# Install Android SDK dependencies
RUN apt update && apt install -y --no-install-recommends \
    openjdk-18-jdk \
    build-essential \
    default-jdk-headless \
    gcc \
    lib32stdc++6 \
    libglu1-mesa \
    libstdc++6 \
    && apt-get clean

ENV JAVA_HOME="/usr/lib/jvm/java-18-openjdk-amd64"

# Install Android SDK
ENV ANDROID_SDK_URL="https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip"
ENV ANDROID_TOOLS_ROOT="/opt/android-sdk"
ENV ANDROID_HOME="${ANDROID_TOOLS_ROOT}"
ENV ANDROID_SDK_ROOT="${ANDROID_TOOLS_ROOT}"

RUN mkdir -p "${ANDROID_TOOLS_ROOT}"
RUN mkdir -p ~/.android
RUN touch ~/.android/repositories.cfg

ENV ANDROID_SDK_ARCHIVE="${ANDROID_TOOLS_ROOT}/archive"
RUN wget --progress=dot:giga "${ANDROID_SDK_URL}" -O "${ANDROID_SDK_ARCHIVE}"
RUN mkdir -p "${ANDROID_TOOLS_ROOT}/cmdline-tools/"
RUN unzip -q -d "${ANDROID_TOOLS_ROOT}/cmdline-tools/" "${ANDROID_SDK_ARCHIVE}"
RUN mv "${ANDROID_TOOLS_ROOT}/cmdline-tools/cmdline-tools/" "${ANDROID_TOOLS_ROOT}/cmdline-tools/latest"

RUN yes "y" | "${ANDROID_TOOLS_ROOT}/cmdline-tools/latest/bin/sdkmanager" "tools" > /dev/null
RUN yes "y" | "${ANDROID_TOOLS_ROOT}/cmdline-tools/latest/bin/sdkmanager" "platform-tools" > /dev/null
RUN yes "y" | "${ANDROID_TOOLS_ROOT}/cmdline-tools/latest/bin/sdkmanager" "patcher;v4" > /dev/null
RUN yes "y" | "${ANDROID_TOOLS_ROOT}/cmdline-tools/latest/bin/sdkmanager" "build-tools;30.0.3" > /dev/null
RUN yes "y" | "${ANDROID_TOOLS_ROOT}/cmdline-tools/latest/bin/sdkmanager" "platforms;android-31" > /dev/null

RUN rm "${ANDROID_SDK_ARCHIVE}"

ENV PATH="${ANDROID_TOOLS_ROOT}/cmdline-tools:${PATH}"
ENV PATH="${ANDROID_TOOLS_ROOT}/cmdline-tools/latest/bin:${PATH}"

# Install Flutter
ENV FLUTTER_HOME="/opt/flutter"

ENV FLUTTER_URL="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.3.5-stable.tar.xz"
RUN mkdir -p "${FLUTTER_HOME}"
ENV FLUTTER_ARCHIVE="${FLUTTER_HOME}/archive"
RUN wget --progress=dot:giga "${FLUTTER_URL}" -O "${FLUTTER_ARCHIVE}"
RUN tar -xf "${FLUTTER_ARCHIVE}" -C "/opt"

RUN git config --global --add safe.directory /opt/flutter
RUN yes "y" | "${FLUTTER_HOME}/bin/flutter" "doctor" "--android-licenses"

RUN rm "${FLUTTER_ARCHIVE}"

ENV PATH="${FLUTTER_HOME}/bin:${PATH}"

RUN mkdir -p "/project"
WORKDIR "/project"

CMD ["flutter", "build", "apk"]
