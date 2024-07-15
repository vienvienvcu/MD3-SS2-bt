use md3_ss02;
create table users (
    id int auto_increment primary key,
    fullName varchar(100),
    email varchar(255),
    password varchar(255),
    phone varchar (11),
    permission bit,
    status bit
);
create table history(
    id int auto_increment primary key,
    user_id int,
    point int,
    examDate datetime,
    constraint fk_users foreign key (user_id) references users(id)
);
create table exams (
    id int auto_increment primary key,
    name varchar(255),
    duration int,
    status bit
);
create table questions (
    id int auto_increment primary key,
    content varchar(255),
    exam_id int,
    status bit,
    constraint fk_exam foreign key (exam_id) references exams(id)
);

create table history_detail(
     id int auto_increment primary key,
     history_id int,
     question_id int,
     resuslt bit,
     constraint fk_history foreign key (history_id) references history(id),
     constraint fk_question foreign key (question_id) references questions (id)
);

create table answer (
    id int auto_increment primary key,
    content varchar(255),
    quesiton_id int,
    answerTrue bit,
    constraint fk_question_answer foreign key (quesiton_id) references questions (id)
);


