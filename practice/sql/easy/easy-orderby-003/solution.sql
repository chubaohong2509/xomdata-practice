-- Xom Data · Most watched videos this week
-- Problem: https://xomdata.com/practice/easy-orderby-003
-- Solved: 2026-09-06

-- Viết SQL của bạn ở đây
SELECT video_title,weekly_views from videos
ORDER BY weekly_views desc, video_title asc
