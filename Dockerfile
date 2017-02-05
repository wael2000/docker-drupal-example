# Docker - Customer Portal Drupal
# 
# VERSION       dev
# Use RHEL 7 image as the base image for this build.  
# Depends on subscription-manager correctly being setup on the RHEL 7 host VM that is building this image
# With a correctly setup RHEL 7 host with subscriptions, those will be fed into the docker image build and yum repos 
# will become available
FROM    registry.access.redhat.com/rhscl/php-56-rhel7
 
MAINTAINER Ben Pritchett <bjpritch@redhat.com>

#  drush installation
RUN yum install php-pear
RUN pear channel-discover pear.drush.org && pear install drush/drush
