FROM mysql:5.6.34

# Setup the custom configuration
ADD ./mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

RUN mysql -uroot -proot 'UPDATE mysql.user SET Host="%" WHERE User="root";';
RUN mysql -uroot -proot 'FLUSH PRIVILEGES;';
