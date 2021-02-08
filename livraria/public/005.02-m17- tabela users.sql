

CREATE TABLE users (
  id bigint(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name varchar(255)  NOT NULL,
  email varchar(255)  NOT NULL,
  email_verified_at timestamp NULL DEFAULT NULL,
  password varchar(255)  NOT NULL,
  remember_token varchar(100)  DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


