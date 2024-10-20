-- CREATE Databases
CREATE DATABASE rat_stories;
CREATE DATABASE rat_auth;

-- Create users and grant privileges for STORIES
CREATE USER rat_stories_db_user WITH ENCRYPTED PASSWORD 'changemestories';
GRANT ALL PRIVILEGES ON DATABASE rat_stories TO rat_stories_db_user;

CREATE USER rat_auth_db_user WITH ENCRYPTED PASSWORD 'changemeauth';
GRANT ALL PRIVILEGES ON DATABASE rat_auth TO rat_auth_db_user;


\c rat_stories
GRANT USAGE ON SCHEMA public TO rat_stories_db_user;
GRANT CREATE ON SCHEMA public TO rat_stories_db_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO rat_stories_db_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO rat_stories_db_user;

\c rat_auth
GRANT USAGE ON SCHEMA public TO rat_auth_db_user;
GRANT CREATE ON SCHEMA public TO rat_auth_db_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO rat_auth_db_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO rat_auth_db_user;
