const cds = require('@sap/cds');
const axios = require('axios');
const https = require('https');

const agent = new https.Agent({
    rejectUnauthorized: false
});

module.exports = cds.service.impl(function () {

    this.on('READ', 'Rastreio', async () => {

        try {

            const response = await axios.get(
                'http://10.44.32.193:4000/LocalizacaoAtual/processar',
                {
                    httpsAgent: agent
                }
            );

            return response.data;

        } catch (error) {

            console.error('Erro API:', error.message);
            return [];

        }

    });

});