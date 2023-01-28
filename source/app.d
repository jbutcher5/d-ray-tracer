import std.stdio;

class Vector3 {
	float[3] values;

	float x() const @property {
		return values[0];
	}

	float y() const @property {
		return values[1];
	}
	
	
    float z() const @property {
		return values[2];
	}

	this(float x, float y, float z) {
	    values[0] = x;
	    values[1] = y;
	    values[2] = z;
	}
	this() {
		this(0, 0, 0);
	}
}

Vector3 Add(Vector3 v1, Vector3 v2) pure @safe {
	return new Vector3(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z);
}

void main()
{
	Vector3 v1 = new Vector3(1, 2, 3);
	Vector3 v2 = new Vector3(6, 3, 1);

	v1 = v1.Add(v2);

	writeln(v1.x, v1.y, v1.z);
}
