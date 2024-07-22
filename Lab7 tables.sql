
CREATE TABLE PROJECT (
	    ProjectID           Int            NOT NULL IDENTITY (1000, 100),
		ProjectName         Char(50)       NOT NULL,
		Department           Char(35)       NOT NULL,
		MaxHours            Numeric(8,2)   NOT NULL DEFAULT 100,
		StartDate           Date           NULL,
		EndDate             Date           NULL,
		CONSTRAINT          PROJECT_PK     PRIMARY KEY (ProjectID),
		CONSTRAINT          PROJ_DEPART_FK FOREIGN KEY (Department)
		                        REFERENCES DEPARTMENT (DepartmentName)
								  ON UPDATE CASCADE
	    );

CREATE TABLE ASSIGNMENT (
        ProjectID           Int            NOT NULL,
		EmployeeNumber      Int            NOT NULL,
		HoursWorked         Numeric (6,2)  NULL,
		CONSTRAINT           ASSIGNMENT_PK   PRIMARY KEY (ProjectId, EmployeeNumber),
		CONSTRAINT           ASSIGN_PROJ_FK  FOREIGN KEY (ProjectID)
		                         REFERENCES PROJECT (ProjectID)
								   ON UPDATE NO ACTION
								   ON DELETE CASCADE,
		CONSTRAINT           ASSIGN_EMP_FK   FOREIGN KEY (EmployeeNumber)
		                       REFERENCES EMPLOYEE  (EmployeeNumber)
							       ON UPDATE NO ACTION
								   ON DELETE NO ACTION
		);