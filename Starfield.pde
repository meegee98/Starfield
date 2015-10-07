//your code here
NormalParticle [] dots;
int numDots= 300;
void setup()
{
	size(500, 500);
	dots= new NormalParticle [numDots];
	for(int i=0; i<dots.length; i++)
	{
		dots[i]= new NormalParticle();

	}//your code here
}
void draw()
{
	
	for(int i=0; i<dots.length; i++)
	{
		dots[i].move();
		dots[i].show();
	}//your code here
}
class NormalParticle
{
	double dX, dY, dSpeed, dAngle;
	int Color;
	NormalParticle(x,y)
	{
		dX=x;
		dY=y;
		dSpeed=(Math.random()*15);
		dAngle=(Math.PI*2*Math.random();
		Color=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	void move()
	{
		Math.cos(dAngle)*dSpeed+dX;
		Math.sin(dAngle)*dSpeed+dY;
	}
	void show()
	{
		fill(Color);
		ellipse((int)dX, (int) dY, 5, 5);
	}
	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

