-- Reference from "https://learnsql.com/blog/draw-christmas-tree-sql/"
SELECT * FROM (
  WITH RECURSIVE christmas_crown(height, crown) AS (
    VALUES
      (1, RPAD(' ', 10, ' ') || '.')
      UNION ALL
        SELECT
          christmas_crown.height + 1,
          RPAD(' ', 10 - christmas_crown.height, ' ')
          || RPAD('.', christmas_crown.height + 1, '*')
          || LPAD('.', christmas_crown.height, '*')
        FROM christmas_crown
        WHERE christmas_crown.height < 10)
  SELECT crown AS tree FROM christmas_crown) AS crown
UNION ALL (
  WITH RECURSIVE christmas_trunk(height, trunk) AS (
    VALUES
      (1, RPAD(' ', 8, ' ') || RPAD(' ', 4, '|'))
      UNION ALL
        SELECT
          christmas_trunk.height + 1,
          RPAD(' ', 8, ' ') || RPAD(' ', 4, '|')
        FROM christmas_trunk
        WHERE christmas_trunk.height < 4)
  SELECT trunk AS tree FROM christmas_trunk);
