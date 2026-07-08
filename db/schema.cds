namespace smartpcm;

entity Rastreio {

    key identificador        : String(50);

    descEquipamento          : String(255);

    localInstalacao          : String(255);

    descLocalInstalacao      : String(255);

    grupoAtual               : String(100);
    localizacaoCalculada     : String(100);
    ultimoGrupoValido        : String(100);

    tipoComunicacao          : String(20);
    ultimaPosicao            : String(30);

    gateway                  : String(50);

    confianca                : String(20);

    totalBT                  : Integer;
    totalLR                  : Integer;
    totalRegistros           : Integer;

}