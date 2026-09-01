-- Xom Data · PDF documents in the attachment store
-- Problem: https://xomdata.com/practice/easy-like-004
-- Solved: 2026-09-01

-- Viết SQL của bạn ở đây
SELECT file_name, uploaded_by from attachments
WHERE file_name LIKE '%.pdf';
