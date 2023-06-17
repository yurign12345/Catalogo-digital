    create table produto(
    id_produto_pk VARCHAR(40) NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY key(id_produto_pk)
);
    create table produto_categoria(
    id_produto_fk VARCHAR(40) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    PRIMARY key(id_produto_fk)
);
create table cantina(
    cnpj_pk VARCHAR(20) NOT NULL,
    email_senai_fk VARCHAR(70) NOT NULL,
    PRIMARY KEY(cnpj_pk),
    FOREIGN key(email_senai_fk) references clientes (email_senai_pk)
);
create table clientes(
    nome VARCHAR(50) NOT NULL,
    email_senai_pk VARCHAR(70) NOT NULL,
    historico_compras VARCHAR(200) NOT NULL,
    saldo INT NOT NULL,
    id_produto_fk VARCHAR(40) NOT NULL,
    PRIMARY key(email_senai_pk),
    FOREIGN key(id_produto_fk) references produto (id_produto_pk)
);