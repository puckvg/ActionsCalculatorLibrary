python=python3
LINE_LENGTH=88
BLACKARGS=--line-length ${LINE_LENGTH}

env=calculator/*.py tests/*.py

lint:
	${python} -m isort --check-only ${env}
	${python} -m flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
	${python} -m flake8 . --count --exit-zero --max-complexity=10 --statistics
	${python} -m black --check ${BLACKARGS} ${env}

format:
	${python} -m isort ${env}
	${python} -m autoflake --in-place --remove-unused-variables ${env}
	${python} -m black ${BLACKARGS} ${env}

test:
	${python} -m pytest -vrs tests
