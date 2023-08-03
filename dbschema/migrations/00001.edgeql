CREATE MIGRATION m1slihf4ogxdixp52s5xc2ipadzooogxmjdoabg5y47suc35rb74ja
    ONTO initial
{
  CREATE TYPE default::Post {
      CREATE REQUIRED PROPERTY postId: std::str;
      CREATE REQUIRED PROPERTY score: std::int32;
      CREATE REQUIRED PROPERTY title: std::str;
  };
};
