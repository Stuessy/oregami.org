package org.oregami.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2012-06-25T22:10:28.931+0200")
@StaticMetamodel(Game.class)
public class Game_ extends BaseEntity_ {
	public static volatile SingularAttribute<Game, String> mainTitle;
	public static volatile SingularAttribute<Game, String> description;
	public static volatile CollectionAttribute<Game, ReleaseGroup> releaseGroupList;
	public static volatile CollectionAttribute<Game, Title> titleList;
	public static volatile CollectionAttribute<Game, Screenshot> screenshotList;
}
