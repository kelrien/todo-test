const cds = require("@sap/cds");

module.exports = (srv) => {
    // Your handlers here
    srv.before(['READ'], 'Todos', async (req) => {});
    srv.on('', () => {} )
}; 