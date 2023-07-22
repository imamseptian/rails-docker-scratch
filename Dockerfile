FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN gem install bundler:2.3

WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

RUN bundle install

# Copy the rest of the application files into the container
COPY . .

# Expose port 3000 (the default Rails server port)
EXPOSE 3000

# Start the Rails server when the container starts
CMD ["rails", "server", "-b", "0.0.0.0"]