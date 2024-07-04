/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Followships
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `Followships` (
  `id` int NOT NULL AUTO_INCREMENT,
  `follower_id` int DEFAULT NULL,
  `following_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Likes
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `Likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `tweet_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Replies
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `Replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `tweet_id` int DEFAULT NULL,
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 183 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: SequelizeMeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Tweets
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `Tweets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 69 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `introduction` text,
  `banner` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 12 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Followships
# ------------------------------------------------------------

INSERT INTO
  `Followships` (
    `id`,
    `follower_id`,
    `following_id`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    4,
    5,
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Followships` (
    `id`,
    `follower_id`,
    `following_id`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    2,
    3,
    5,
    '2024-05-07 04:55:09',
    '2024-05-07 04:55:09'
  );
INSERT INTO
  `Followships` (
    `id`,
    `follower_id`,
    `following_id`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    3,
    9,
    5,
    '2024-05-07 05:03:50',
    '2024-05-07 05:03:50'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Likes
# ------------------------------------------------------------

INSERT INTO
  `Likes` (
    `id`,
    `user_id`,
    `tweet_id`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    4,
    4,
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Replies
# ------------------------------------------------------------

INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    7,
    1,
    'ea',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    2,
    6,
    1,
    'qui rerum autem sapiente nihil',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    3,
    5,
    1,
    'sequi dolor',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    4,
    7,
    2,
    'odio ut neque debitis',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    5,
    6,
    2,
    'non dolorem veritatis beatae ad et ea',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    6,
    5,
    2,
    'vel consectetur ut non vero',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    7,
    7,
    3,
    'facere ut aut',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    8,
    6,
    3,
    'vero',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    9,
    5,
    3,
    'nihil',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    10,
    7,
    4,
    'facere porro ipsa dolores exercitationem quaerat et',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    11,
    6,
    4,
    'cum ipsum laborum ab est dolor',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    12,
    5,
    4,
    'ut atque aut omnis incidunt ullam dolorum',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    13,
    7,
    5,
    'similique asperiores voluptatem eligendi vitae corporis temporibus quae',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    14,
    6,
    5,
    'dolores incidunt blanditiis iusto quia',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    15,
    5,
    5,
    'molestiae quaerat quo ex nam praesentium',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    16,
    7,
    6,
    'aut earum et enim reiciendis eum',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    17,
    6,
    6,
    'velit consequatur ducimus alias quod et porro deserunt',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    18,
    5,
    6,
    'qui consequuntur harum',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    19,
    7,
    7,
    'ad',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    20,
    6,
    7,
    'asperiores molestias quam',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    21,
    5,
    7,
    'rerum',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    22,
    7,
    8,
    'laudantium',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    23,
    6,
    8,
    'id officiis aspernatur et molestiae est enim quam',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    24,
    5,
    8,
    'cupiditate consequuntur laboriosam ex qui autem impedit',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    25,
    7,
    9,
    'iusto autem eos incidunt',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    26,
    6,
    9,
    'ipsam officiis voluptatem',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    27,
    5,
    9,
    'eum quis',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    28,
    7,
    10,
    'iusto magnam',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    29,
    6,
    10,
    'est eaque esse et officiis',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    30,
    5,
    10,
    'nulla ad enim quia fugit quisquam',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    31,
    7,
    11,
    'et amet',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    32,
    6,
    11,
    'aut quia et',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    33,
    5,
    11,
    'culpa delectus',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    34,
    7,
    12,
    'quia placeat omnis eos voluptatum',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    35,
    6,
    12,
    'non hic a sed rem',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    36,
    5,
    12,
    'alias hic iste maxime quae error',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    37,
    7,
    13,
    'fugit est',
    '2024-05-06 12:40:47',
    '2024-05-06 12:40:47'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    38,
    6,
    13,
    'voluptatem ut reprehenderit consequatur consequuntur et architecto',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    39,
    5,
    13,
    'ratione et iusto quia',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    40,
    7,
    14,
    'debitis esse',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    41,
    6,
    14,
    'nostrum sit optio earum vero',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    42,
    5,
    14,
    'provident dolorem perspiciatis omnis aut hic cum enim',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    43,
    7,
    15,
    'natus',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    44,
    6,
    15,
    'quam',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    45,
    5,
    15,
    'quo facere et dicta quibusdam pariatur',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    46,
    7,
    16,
    'corrupti eum qui dolor voluptatibus doloribus',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    47,
    6,
    16,
    'et debitis',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    48,
    5,
    16,
    'id laborum id tenetur aperiam minus',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    49,
    7,
    17,
    'eaque nesciunt aliquid',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    50,
    6,
    17,
    'ipsam deserunt veniam alias et aut ut praesentium',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    51,
    5,
    17,
    'modi nesciunt doloremque mollitia porro omnis consequatur',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    52,
    7,
    18,
    'omnis culpa',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    53,
    6,
    18,
    'molestiae',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    54,
    5,
    18,
    'aut aut exercitationem culpa quisquam',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    55,
    7,
    19,
    'exercitationem minima',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    56,
    6,
    19,
    'odio odio et id',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    57,
    5,
    19,
    'voluptates consectetur et',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    58,
    7,
    20,
    'quod',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    59,
    6,
    20,
    'sequi natus voluptatem',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    60,
    5,
    20,
    'a pariatur nostrum aut',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    61,
    7,
    21,
    'id est temporibus accusantium',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    62,
    6,
    21,
    'repellendus non',
    '2024-05-06 12:40:48',
    '2024-05-06 12:40:48'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    63,
    5,
    21,
    'qui dolorem nostrum aut est doloribus officiis soluta',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    64,
    7,
    22,
    'repudiandae consectetur qui quod veritatis quibusdam et',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    65,
    6,
    22,
    'reiciendis occaecati sapiente nemo',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    66,
    5,
    22,
    'enim nulla quisquam',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    67,
    7,
    23,
    'est sit ut debitis quam quisquam ipsa quis',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    68,
    6,
    23,
    'occaecati culpa et',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    69,
    5,
    23,
    'illo nam ipsa rerum vero dolorum',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    70,
    7,
    24,
    'dolores aliquam illum',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    71,
    6,
    24,
    'nemo quia fugiat eaque iusto porro',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    72,
    5,
    24,
    'voluptatem et corrupti iste',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    73,
    7,
    25,
    'labore aut quia vel dignissimos',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    74,
    6,
    25,
    'aut perspiciatis cumque accusamus explicabo',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    75,
    5,
    25,
    'dolorem et et maxime at',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    76,
    7,
    26,
    'pariatur voluptatum alias numquam',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    77,
    6,
    26,
    'nihil porro',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    78,
    5,
    26,
    'distinctio ab',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    79,
    7,
    27,
    'possimus eum',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    80,
    6,
    27,
    'voluptatum saepe',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    81,
    5,
    27,
    'similique saepe voluptatem quia',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    82,
    7,
    28,
    'perspiciatis vel quis sequi aperiam atque',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    83,
    6,
    28,
    'cum blanditiis adipisci similique pariatur',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    84,
    5,
    28,
    'sint ut libero sint reprehenderit maiores consectetur',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    85,
    7,
    29,
    'repudiandae totam ad voluptates placeat',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    86,
    6,
    29,
    'animi et harum',
    '2024-05-06 12:40:49',
    '2024-05-06 12:40:49'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    87,
    5,
    29,
    'accusamus adipisci eligendi asperiores eius facere et',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    88,
    7,
    30,
    'maiores',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    89,
    6,
    30,
    'dolor et non non iste non',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    90,
    5,
    30,
    'dolor reprehenderit deleniti',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    91,
    7,
    31,
    'nihil quasi impedit voluptatem',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    92,
    6,
    31,
    'impedit necessitatibus voluptas quisquam ea beatae quos error',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    93,
    5,
    31,
    'occaecati sunt illo',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    94,
    7,
    32,
    'quia hic consequatur sapiente fugiat',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    95,
    6,
    32,
    'modi magni et quis adipisci ratione',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    96,
    5,
    32,
    'ut aliquam inventore doloribus exercitationem',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    97,
    7,
    33,
    'explicabo',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    98,
    6,
    33,
    'delectus iusto nulla quis',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    99,
    5,
    33,
    'qui non sit nam magnam dignissimos autem qui',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    100,
    7,
    34,
    'impedit hic voluptate voluptatem velit ea tenetur numquam',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    101,
    6,
    34,
    'corrupti omnis et quis et',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    102,
    5,
    34,
    'et recusandae dolorem libero voluptatem',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    103,
    7,
    35,
    'dolorem totam',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    104,
    6,
    35,
    'eveniet aut provident natus possimus doloribus quis corrupti',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    105,
    5,
    35,
    'velit unde est necessitatibus voluptas natus impedit deserunt',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    106,
    7,
    36,
    'quis dicta in accusamus eum omnis',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    107,
    6,
    36,
    'reiciendis quidem',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    108,
    5,
    36,
    'omnis saepe aut quasi',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    109,
    7,
    37,
    'dicta exercitationem veritatis placeat repellendus praesentium',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    110,
    6,
    37,
    'beatae impedit quia',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    111,
    5,
    37,
    'ut et',
    '2024-05-06 12:40:50',
    '2024-05-06 12:40:50'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    112,
    7,
    38,
    'reprehenderit iure explicabo accusamus delectus',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    113,
    6,
    38,
    'dolor perferendis totam consectetur',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    114,
    5,
    38,
    'sed deserunt in eveniet delectus praesentium',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    115,
    7,
    39,
    'sunt nulla sit beatae quod molestiae similique quas',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    116,
    6,
    39,
    'quo id et ratione beatae porro quasi',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    117,
    5,
    39,
    'vel earum iusto deleniti eveniet dolorem nihil voluptatem',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    118,
    7,
    40,
    'aut tenetur id eos autem',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    119,
    6,
    40,
    'delectus est repellendus',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    120,
    5,
    40,
    'aut sapiente aliquam odit quibusdam architecto',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    121,
    7,
    41,
    'laudantium occaecati praesentium pariatur necessitatibus reiciendis',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    122,
    6,
    41,
    'dicta laboriosam at veritatis minus',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    123,
    5,
    41,
    'vel quibusdam ex aliquid',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    124,
    7,
    42,
    'blanditiis ut nobis suscipit nihil sit',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    125,
    6,
    42,
    'in qui necessitatibus ex officiis rerum',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    126,
    5,
    42,
    'ullam est corporis iure ducimus deleniti quis impedit',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    127,
    7,
    43,
    'cum natus dolorum',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    128,
    6,
    43,
    'delectus id omnis ipsam id',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    129,
    5,
    43,
    'accusamus est architecto in molestiae quis eius',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    130,
    7,
    44,
    'rerum ut omnis quae exercitationem dignissimos consequatur',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    131,
    6,
    44,
    'aut harum commodi suscipit',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    132,
    5,
    44,
    'rerum ea inventore omnis',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    133,
    7,
    45,
    'eius autem nisi est omnis',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    134,
    6,
    45,
    'est',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    135,
    5,
    45,
    'minus quia ratione beatae fuga',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    136,
    7,
    46,
    'provident autem tempore distinctio',
    '2024-05-06 12:40:51',
    '2024-05-06 12:40:51'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    137,
    6,
    46,
    'et autem magnam',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    138,
    5,
    46,
    'rem magnam nihil repudiandae',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    139,
    7,
    47,
    'aut cumque nesciunt',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    140,
    6,
    47,
    'itaque facere id error pariatur sunt cupiditate',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    141,
    5,
    47,
    'consequuntur voluptatem animi beatae commodi',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    142,
    7,
    48,
    'quia nihil autem nobis enim sit error cupiditate',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    143,
    6,
    48,
    'consequuntur aut dolorem molestiae sequi enim dolor molestiae',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    144,
    5,
    48,
    'ut quasi distinctio non et',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    145,
    7,
    49,
    'eligendi et voluptatem eos',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    146,
    6,
    49,
    'ea molestias voluptas',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    147,
    5,
    49,
    'facilis est sit cum est expedita',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    148,
    7,
    50,
    'recusandae quod voluptatum quas est iste eum sit',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    149,
    6,
    50,
    'et in libero quam ab',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    150,
    5,
    50,
    'ullam',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    151,
    7,
    51,
    'non',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    152,
    6,
    51,
    'ea provident',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    153,
    5,
    51,
    'asperiores autem ea consequatur et consequuntur quo eius',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    154,
    7,
    52,
    'nemo unde',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    155,
    6,
    52,
    'saepe voluptatum atque',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    156,
    5,
    52,
    'id distinctio',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    157,
    7,
    53,
    'facilis saepe eaque ut molestias',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    158,
    6,
    53,
    'ratione quod',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    159,
    5,
    53,
    'deleniti exercitationem amet rerum nisi omnis distinctio',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    160,
    7,
    54,
    'beatae tenetur totam autem vel',
    '2024-05-06 12:40:52',
    '2024-05-06 12:40:52'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    161,
    6,
    54,
    'hic et nesciunt error numquam rem accusantium',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    162,
    5,
    54,
    'doloribus fugit nihil quis atque iure alias',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    163,
    7,
    55,
    'ipsam labore non',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    164,
    6,
    55,
    'magni',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    165,
    5,
    55,
    'sint quisquam consequatur',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    166,
    7,
    56,
    'quis enim',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    167,
    6,
    56,
    'dolores doloribus hic velit harum',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    168,
    5,
    56,
    'dolorum blanditiis',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    169,
    7,
    57,
    'fugit perspiciatis hic perferendis voluptatem quibusdam consectetur unde',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    170,
    6,
    57,
    'sunt ut voluptatum id exercitationem ea',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    171,
    5,
    57,
    'molestiae alias animi suscipit sit beatae at voluptatum',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    172,
    7,
    58,
    'minima quia sapiente dolores non dolor enim omnis',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    173,
    6,
    58,
    'veritatis eos consequuntur voluptas molestiae reprehenderit provident',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    174,
    5,
    58,
    'ipsa aut voluptatem earum omnis asperiores',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    175,
    7,
    59,
    'laudantium necessitatibus voluptatum',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    176,
    6,
    59,
    'fuga aliquid odio doloribus cumque animi et',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    177,
    5,
    59,
    'assumenda aut eum',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    178,
    7,
    60,
    'enim dolores quia et deleniti',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    179,
    6,
    60,
    'omnis',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    180,
    5,
    60,
    'autem corrupti iure quia maiores',
    '2024-05-06 12:40:53',
    '2024-05-06 12:40:53'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    181,
    3,
    14,
    'test-reply',
    '2024-05-06 14:21:40',
    '2024-05-06 14:21:40'
  );
INSERT INTO
  `Replies` (
    `id`,
    `user_id`,
    `tweet_id`,
    `comment`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    182,
    3,
    14,
    'test-reply-by-postman',
    '2024-05-06 14:22:03',
    '2024-05-06 14:22:03'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: SequelizeMeta
# ------------------------------------------------------------

INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20230607150738-create-user.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20230607220443-create-reply.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20230607222702-create-like.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20230609160657-create-tweet.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20230609162746-create-followship.js');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Tweets
# ------------------------------------------------------------

INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    1,
    'sunt corporis quidem atque dicta aut',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    2,
    1,
    'tempore',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    3,
    1,
    'inventore voluptatibus est tempora',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    4,
    1,
    'assumenda',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    5,
    1,
    'ea in ea aperiam',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    6,
    1,
    'consequatur tenetur qui necessitatibus quas aut dolore',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    7,
    1,
    'voluptas similique fuga',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    8,
    1,
    'consequatur magnam consectetur optio ut et sed reprehenderit',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    9,
    1,
    'consequatur officiis laborum voluptas assumenda dolores non',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    10,
    1,
    'vel harum exercitationem in ut blanditiis',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    11,
    3,
    'sunt',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    12,
    3,
    'debitis itaque voluptatem recusandae ea voluptas molestiae quas',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    13,
    3,
    'perspiciatis accusamus est',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    14,
    3,
    'vero nisi magni numquam eum ut porro',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    15,
    3,
    'et',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    16,
    3,
    'et quis voluptas voluptas rerum consequatur ut consequatur',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    17,
    3,
    'consequatur non deleniti ipsum et vero',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    18,
    3,
    'nesciunt doloremque aut dolor',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    19,
    3,
    'sunt dolorum nulla iure',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    20,
    3,
    'esse ullam ducimus et mollitia nulla',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    21,
    4,
    'aut',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    22,
    4,
    'nam assumenda',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    23,
    4,
    'occaecati',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    24,
    4,
    'quas libero eum eligendi quia',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    25,
    4,
    'quam iure consequatur',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    26,
    4,
    'similique',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    27,
    4,
    'optio dolores minima',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    28,
    4,
    'est dolorum voluptatem vero autem officiis quis saepe',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    29,
    4,
    'perspiciatis officiis voluptate voluptatem voluptatem nesciunt eaque',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    30,
    4,
    'libero',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    31,
    5,
    'perspiciatis',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    32,
    5,
    'laudantium exercitationem est est est',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    33,
    5,
    'sed sint placeat quae quia qui',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    34,
    5,
    'pariatur et',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    35,
    5,
    'voluptatem amet doloribus id eos amet corrupti',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    36,
    5,
    'qui',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    37,
    5,
    'beatae',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    38,
    5,
    'velit aut voluptas iste cum ut',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    39,
    5,
    'eos hic accusamus eligendi',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    40,
    5,
    'est hic possimus',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    41,
    6,
    'dolore dicta dolore vero vel ut ut qui',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    42,
    6,
    'et sunt consequuntur quidem corporis',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    43,
    6,
    'consequatur ullam perferendis deserunt dolorum',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    44,
    6,
    'quia ex consequatur magni perspiciatis ut fugit animi',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    45,
    6,
    'praesentium iure earum eius',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    46,
    6,
    'in maxime',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    47,
    6,
    'id at',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    48,
    6,
    'consectetur eum est ut quos perspiciatis',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    49,
    6,
    'maiores et',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    50,
    6,
    'magni iste sed ad et nobis',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    51,
    7,
    'eos sed',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    52,
    7,
    'et nesciunt optio aut ipsa',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    53,
    7,
    'id placeat aut labore facilis perspiciatis reiciendis nihil',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    54,
    7,
    'aspernatur',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    55,
    7,
    'perferendis quas odio illum aut id eveniet',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    56,
    7,
    'itaque doloremque quia enim voluptas',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    57,
    7,
    'amet exercitationem occaecati voluptas quasi',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    58,
    7,
    'harum in quasi',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    59,
    7,
    'animi et doloribus',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    60,
    7,
    'dolor commodi saepe vitae necessitatibus',
    '2024-05-06 12:40:46',
    '2024-05-06 12:40:46'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    61,
    3,
    'this is post from postman',
    '2024-05-06 14:17:45',
    '2024-05-06 14:17:45'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    62,
    9,
    '測試一下功能  ',
    '2024-05-07 05:04:24',
    '2024-05-07 05:04:24'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    63,
    4,
    '大家好  我是磨菇~',
    '2024-05-07 05:04:57',
    '2024-05-07 05:04:57'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    64,
    4,
    '改了這個模板看的其實不是很順眼...',
    '2024-05-07 05:05:21',
    '2024-05-07 05:05:21'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    65,
    5,
    '慘了!   忘記澆花了今天...',
    '2024-05-07 05:05:59',
    '2024-05-07 05:05:59'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    66,
    7,
    '\"We know no king but the King in the North whose name is Stark!\" - Lyanna Mormont',
    '2024-05-07 05:07:02',
    '2024-05-07 05:07:02'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    67,
    6,
    'hey,  time is running out',
    '2024-05-07 05:07:24',
    '2024-05-07 05:07:24'
  );
INSERT INTO
  `Tweets` (
    `id`,
    `user_id`,
    `description`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    68,
    9,
    '手槍局直接rush B\n- 到B道等閃光\n- 2道煙霧爆了再上\n- 黑屋進第一層就好,  等ramp上了再出\n- 清點完才下包, 注意忍者位\n\n',
    '2024-05-20 03:36:57',
    '2024-05-20 03:36:57'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Users
# ------------------------------------------------------------

INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    'test6',
    'test6@example.com',
    '$2a$10$gcyAmXM3KOlOK6KLPpzMHOSm1ob1wTxDk83xFdSiuLA.z5b35Uz6W',
    'test6',
    'https://i.imgur.com/V4RclNb.png',
    NULL,
    'https://i.imgur.com/ZFz8ZEI.png',
    'user',
    '2024-05-06 12:35:04',
    '2024-05-06 12:35:04'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    2,
    'root',
    'root@example.com',
    '$2a$10$S7W85JxFB5fbCE552EJHb.pt2Q.aSJv7fPkgRKbaugSsFewM2yIIG',
    'root name',
    'https://i.imgur.com/6MjaOQm.jpeg',
    NULL,
    'https://i.imgur.com/3ZH4ZZ8.jpeg',
    'admin',
    '2024-05-06 12:40:38',
    '2024-05-06 12:40:38'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    3,
    'user1',
    'user1@example.com',
    '$2a$10$URrswCY8TaJIw4FkMsIftORLB1cu3RUUqE98OURGWoYyFLPfLwS/y',
    'user1-postman',
    'https://i.imgur.com/0z0x5EK_d.webp?maxwidth=1520&fidelity=grand',
    'users/put-test',
    'https://i.imgur.com/3ZH4ZZ8.jpeg',
    'user',
    '2024-05-06 12:40:38',
    '2024-05-06 15:24:55'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    4,
    'user2',
    'user2@example.com',
    '$2a$10$Ala5gDwEBl2eeOrlEXG7lejzO/bsYPd8k7/AJ47Bs.LMGloe2NIEm',
    'user2 name',
    'https://i.imgur.com/mwR4POb.jpeg',
    NULL,
    'https://i.imgur.com/3ZH4ZZ8.jpeg',
    'user',
    '2024-05-06 12:40:38',
    '2024-05-06 12:40:38'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    5,
    'user3',
    'user3@example.com',
    '$2a$10$jD5CWl/xPKnmFzEk9tgby.VRvagDnp5fxB7fMUAlqFl8JTVF.uQz.',
    'user3 name',
    'https://i.imgur.com/Ghu3yvGb.jpg',
    NULL,
    'https://i.imgur.com/3ZH4ZZ8.jpeg',
    'user',
    '2024-05-06 12:40:39',
    '2024-05-06 12:40:39'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    6,
    'user4',
    'user4@example.com',
    '$2a$10$ZHSIyxpQzeY2fghvZODLjucVnpSiT3r9SEh.yeo9QP3gyf9hHjoRO',
    'user4 name',
    'https://i.imgur.com/fbkd1seb.jpg',
    NULL,
    'https://i.imgur.com/3ZH4ZZ8.jpeg',
    'user',
    '2024-05-06 12:40:39',
    '2024-05-06 12:40:39'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    7,
    'user5',
    'user5@example.com',
    '$2a$10$wWgeB8KjAUVgeNrSzdRHnOCwk/ExVeMwC5WsJ0kAaK32F1EQsPpaC',
    'user5 name',
    'https://i.imgur.com/JpxtkDsb.jpg',
    NULL,
    'https://i.imgur.com/3ZH4ZZ8.jpeg',
    'user',
    '2024-05-06 12:40:39',
    '2024-05-06 12:40:39'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    8,
    'evatest',
    'evatest@example.com',
    '$2a$10$KdzHPactznE1/ujyxckjYeFXV8zttp9n.34K0V0TfxE3EE5dnO/Da',
    'eva-postman',
    'https://i.imgur.com/V4RclNb.png',
    NULL,
    'https://i.imgur.com/ZFz8ZEI.png',
    'user',
    '2024-05-06 14:25:14',
    '2024-05-06 14:25:14'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    9,
    'test',
    'test@test.123',
    '$2a$10$.dmQx/oXWoF.Mfelv6Gui.v48aKJUSaqvRwnIga6uL37jErq9Mfd.',
    'test',
    'https://i.imgur.com/SnetmkG.png',
    '我是測試工程師',
    'https://i.imgur.com/T2XDJls.jpeg',
    'user',
    '2024-05-07 04:54:13',
    '2024-05-20 03:34:56'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    10,
    'test',
    'test@test.123',
    '$2a$10$G8VXlXBm4Evhhuv66hlnn..fvavB/uH1iwvOgNK77NApur4u6yeqK',
    'test',
    'https://i.imgur.com/V4RclNb.png',
    NULL,
    'https://i.imgur.com/ZFz8ZEI.png',
    'user',
    '2024-05-07 04:54:13',
    '2024-05-07 04:54:13'
  );
INSERT INTO
  `Users` (
    `id`,
    `account`,
    `email`,
    `password`,
    `name`,
    `avatar`,
    `introduction`,
    `banner`,
    `role`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    11,
    'test',
    'test@test.123',
    '$2a$10$88mP8bPTFutQhGLuYhY2fuqJv3Np0dh2ENS8r3xsI6EGBxzQwg0de',
    'test',
    'https://i.imgur.com/V4RclNb.png',
    NULL,
    'https://i.imgur.com/ZFz8ZEI.png',
    'user',
    '2024-05-07 04:54:13',
    '2024-05-07 04:54:13'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
