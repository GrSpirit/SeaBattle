java_import com.badlogic.gdx.ApplicationAdapter
java_import com.badlogic.gdx.Gdx
java_import com.badlogic.gdx.graphics.GL20
java_import com.badlogic.gdx.graphics.Texture
java_import com.badlogic.gdx.graphics.g2d.SpriteBatch

# Your main game class. If you change the class name, make sure you update
# libgdx_activity.rb to specify the new game name.

class MainGame < ApplicationAdapter
	def create
		@batch = SpriteBatch.new
		@img = Texture.new("badlogic.jpg");
		@camera = OrtographicCamra
	end

	def render
		Gdx.gl.glClearColor(1, 1, 1, 1)
		Gdx.gl.glClear(GL20.GL_COLOR_BUFFER_BIT)
		@batch.begin
		#@batch.draw(@img, 32, 64)
		# Draw fields
		@batch.end
	end
end
