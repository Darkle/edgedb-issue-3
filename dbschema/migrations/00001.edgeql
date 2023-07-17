CREATE MIGRATION m1cw345v2ifx2wtz3v3whg7gewhvd7bzawz5ys33ckoknyxdbddtba
    ONTO initial
{
  CREATE TYPE default::Book {
      CREATE PROPERTY author: std::str;
      CREATE PROPERTY name: std::str;
  };
  CREATE TYPE default::Post {
      CREATE REQUIRED PROPERTY postId: std::str;
      CREATE REQUIRED PROPERTY score: std::int32;
      CREATE REQUIRED PROPERTY title: std::str;
  };
  CREATE TYPE default::User {
      CREATE REQUIRED PROPERTY name: std::str;
  };
};
