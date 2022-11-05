'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.addColumn('Users', 'pseudo', {
      type: Sequelize.DataTypes.STRING
    });
    await queryInterface.addColumn('Users', 'avatar', {
      type: Sequelize.DataTypes.STRING
    });
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.removeColumn('Users', 'pseudo');
    await queryInterface.removeColumn('Users', 'avatar');
  }
};
