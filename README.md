this is on github pages
Your site is published at https://kikluz.com/

# how to setup blog

	<% blog.articles[0...5].each do |article| %>
		<h4>
		<%= link_to article.title, article.path, :relative => true %>
		</h4>
	<p>
		<time><%= article.date.strftime('%b %e %Y') %></time>
	</p>
	<p>
	<%= article.summary(150) %>
	</p>
	<span>
		<%= link_to "Read more", article.url, :relative => true %>
	</span>
	<% end %>

	<blockquote class="blog_links">
		<h4 class="btn">
			<%= link_to 'Home', '/index.html', :relative => true %> 
		</h4>
		<h4>
		</blockquote>
	</div>  


how to generate an article
code: middleman article TITLE

----------------------------------------------
	<% blog.articles[0...5].each do |article| %>
		<section class="stories">
			<article class="story">
				<h4 class="title">
				<%= link_to article.title, article.path, :relative => true %>
			</h4>
			<p class="info">date: <span><time><%= article.date.strftime('%b %e %Y') %></time></span></p>
			<p class="info"><%= article.summary(50) %></p>
			<div>
				<%= link_to "Read more", article.url, :relative => true %>
			</div>
		</article>
		</section>	

		<% end %>

		# if you want to link the title
		<%= link_to article.title, article.path, :relative => true %>

		# link for font awesome
		https://fontawesome.com/v5/icons/envelope?s=regular