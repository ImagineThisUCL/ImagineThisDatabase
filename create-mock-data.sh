#!/bin/bash
export MOCK=mock.sql
export MOCK_DIR=mock-data

echo "Generating $MOCK..."
if [ "$(ls | grep $MOCK)" ]; then
    echo "Deleting old $MOCK..."
fi
touch $MOCK
for i in $MOCK_DIR/projects.sql $MOCK_DIR/users.sql $MOCK_DIR/feedbacks.sql $MOCK_DIR/votes.sql
do
    cat $i >> $MOCK
done
echo "$MOCK Created..."