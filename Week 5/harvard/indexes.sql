CREATE INDEX "search_by_enrollment" ON "enrollments"("course_id");
CREATE INDEX "search_courses" ON "courses"("department","semester");
CREATE INDEX "search_courses_by_id" ON "courses"("id","semester");
CREATE INDEX "search_by_title_semester" ON "courses"("title","semester");
CREATE INDEX "search_by_satisfies_course_id" ON "satisfies"("course_id");
CREATE INDEX "search_by_student_id" ON "enrollments" ("student_id");
CREATE INDEX "search_semester" ON "courses" ("semester");