/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : marvel

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 01/06/2019 17:39:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mcu_comics
-- ----------------------------
DROP TABLE IF EXISTS `mcu_stories`;
CREATE TABLE `mcu_stories` (
  `id` varchar(9) NOT NULL COMMENT 'The unique ID of the comic resource',
  -- `digital_id` varchar(9) DEFAULT '0' COMMENT 'The ID of the digital comic representation of this comic. Will be 0 if the comic is not available digitally.',
  `title` varchar(100) DEFAULT NULL COMMENT 'The story title.',
  `description` text COMMENT 'A short description of the story.',
  -- `issue_number` int(11) DEFAULT NULL COMMENT 'The number of the issue in the series (will generally be 0 for collection formats).',
  -- `variantDescript variant_description` text COMMENT 'If the issue is a variant (e.g. an alternate cover, second printing, or director''s cut), a text description of the variant.',
  `resource_uri` varchar(255) DEFAULT NULL COMMENT 'The canonical URL identifier for this resource.',
  `type` varchar(100) DEFAULT NULL COMMENT 'The story type e.g. interior story, cover, text story.',
  `modified` date DEFAULT NULL COMMENT 'The date the resource was most recently modified.',
  -- `start_year` int DEFAULT NULL COMMENT 'The first year of publication for the series.',
  -- `end_year` int DEFAULT NULL COMMENT 'The last year of publication for the series (conventionally, 2099 for ongoing series).',
  -- `rating` varchar(100) DEFAULT NULL COMMENT 'The age-appropriateness rating for the series.',
  `thumbnail` varchar(100) DEFAULT NULL COMMENT 'The representative image for this story.',
  `comics` text COMMENT 'A resource list containing comics in which this story takes place.',
  `events` text COMMENT 'A resource list of the events in which this story appears.',
  `series` varchar(255) DEFAULT NULL COMMENT 'A resource list containing series in which this story appears.',
  `characters` text COMMENT 'A resource list of characters which appear in this story.',
  `creators` text COMMENT 'A resource list of creators who worked on this story.',
  `original_issue` text COMMENT 'A summary representation of the issue in which this story was originally published.'

--   next  EventSummary  A summary representation of the event which follows this event.
-- previous  EventSummary  A summary representation of the event which preceded this event.

  
  
--   `isbn` varchar(13) DEFAULT NULL COMMENT 'The ISBN for the comic (generally only populated for collection formats).',
--   `upc_barcode` varchar(255) DEFAULT NULL COMMENT 'The UPC barcode number for the comic (generally only populated for periodical formats).',
--   `diamond_code` varchar(255) DEFAULT NULL COMMENT 'The Diamond code for the comic.',
--   `ean_barcode` varchar(255) DEFAULT NULL COMMENT 'The EAN barcode for the comic.',
--   `issn_barcode` varchar(255) DEFAULT NULL COMMENT 'The ISSN barcode for the comic.',
--   `format` varchar(255) DEFAULT NULL COMMENT 'The publication format of the comic e.g. comic, hardcover, trade paperback.',
--   `page_count` varchar(255) DEFAULT NULL COMMENT 'The number of story pages in the comic.',
--   `descriptive_text` text COMMENT 'A set of descriptive text blurbs for the comic.',
  
  
--   `series` varchar(255) DEFAULT NULL COMMENT 'A summary representation of the series to which this comic belongs.',
--   `variants` text COMMENT 'A list of variant issues for this comic (includes the "original" issue if the current issue is a variant).',
--   `collections` text COMMENT 'A list of collections which include this comic (will generally be empty if the comic''s format is a collection).',
--   `collected_issues` text COMMENT 'A list of issues collected in this comic (will generally be empty for periodical formats such as "comic" or "magazine").',
--   `key_dates` text COMMENT 'A list of key dates for this comic.',
--   `prices` varchar(255) DEFAULT NULL COMMENT 'A list of prices for this comic.',
  
--   `promotional_images` varchar(255) DEFAULT NULL COMMENT 'A list of promotional images associated with this comic.',
--   `creators` text COMMENT 'A resource list containing the creators associated with this comic.',
--   `characters` text COMMENT 'A resource list containing the characters which appear in this comic.',
--   `stories` varchar(255) DEFAULT NULL COMMENT 'A resource list containing the stories which appear in this comic.',
--   `events` varchar(255) DEFAULT NULL COMMENT 'A resource list containing the events in which this comic appears.',
  ,PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
