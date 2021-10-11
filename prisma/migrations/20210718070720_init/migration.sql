-- CreateTable
CREATE TABLE `Blob` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `code` INTEGER UNSIGNED NOT NULL,
    `kind` TINYINT UNSIGNED NOT NULL,
    `path` VARCHAR(255) NOT NULL,
    `class_id` INTEGER UNSIGNED NOT NULL,
    `marks` INTEGER UNSIGNED NOT NULL,
    `markdown` TEXT NOT NULL,
    `create_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `update_time` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Blob.path_unique`(`path`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;