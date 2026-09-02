
import 'dart:convert';

class PopularMovie {
    final Dates dates;
    final int page;
    final List<Result> Movie;
    final int totalPages;
    final int totalResults;

    PopularMovie({
        required this.dates,
        required this.page,
        required this.Movie,
        required this.totalPages,
        required this.totalResults,
    });

    PopularMovie copyWith({
        Dates? dates,
        int? page,
        List<Result>? results,
        int? totalPages,
        int? totalResults,
    }) => 
        PopularMovie(
            dates: dates ?? this.dates,
            page: page ?? this.page,
            Movie: results ?? this.Movie,
            totalPages: totalPages ?? this.totalPages,
            totalResults: totalResults ?? this.totalResults,
        );

    factory PopularMovie.fromRawJson(String str) => PopularMovie.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PopularMovie.fromJson(Map<String, dynamic> json) => PopularMovie(
        dates: Dates.fromJson(json["dates"]),
        page: json["page"],
        Movie: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

    Map<String, dynamic> toJson() => {
        "dates": dates.toJson(),
        "page": page,
        "results": List<dynamic>.from(Movie.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
    };
}

class Dates {
    final DateTime maximum;
    final DateTime minimum;

    Dates({
        required this.maximum,
        required this.minimum,
    });

    Dates copyWith({
        DateTime? maximum,
        DateTime? minimum,
    }) => 
        Dates(
            maximum: maximum ?? this.maximum,
            minimum: minimum ?? this.minimum,
        );

    factory Dates.fromRawJson(String str) => Dates.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Dates.fromJson(Map<String, dynamic> json) => Dates(
        maximum: DateTime.parse(json["maximum"]),
        minimum: DateTime.parse(json["minimum"]),
    );

    Map<String, dynamic> toJson() => {
        "maximum": "${maximum.year.toString().padLeft(4, '0')}-${maximum.month.toString().padLeft(2, '0')}-${maximum.day.toString().padLeft(2, '0')}",
        "minimum": "${minimum.year.toString().padLeft(4, '0')}-${minimum.month.toString().padLeft(2, '0')}-${minimum.day.toString().padLeft(2, '0')}",
    };
}

class Result {
    final bool adult;
    final String backdropPath;
    final List<int> genreIds;
    final int id;
    final String title;
    final String originalLanguage;
    final String originalTitle;
    final String overview;
    final double popularity;
    final String posterPath;
    final DateTime releaseDate;
    final bool softcore;
    final bool video;
    final double voteAverage;
    final int voteCount;

    Result({
        required this.adult,
        required this.backdropPath,
        required this.genreIds,
        required this.id,
        required this.title,
        required this.originalLanguage,
        required this.originalTitle,
        required this.overview,
        required this.popularity,
        required this.posterPath,
        required this.releaseDate,
        required this.softcore,
        required this.video,
        required this.voteAverage,
        required this.voteCount,
    });

    Result copyWith({
        bool? adult,
        String? backdropPath,
        List<int>? genreIds,
        int? id,
        String? title,
        String? originalLanguage,
        String? originalTitle,
        String? overview,
        double? popularity,
        String? posterPath,
        DateTime? releaseDate,
        bool? softcore,
        bool? video,
        double? voteAverage,
        int? voteCount,
    }) => 
        Result(
            adult: adult ?? this.adult,
            backdropPath: backdropPath ?? this.backdropPath,
            genreIds: genreIds ?? this.genreIds,
            id: id ?? this.id,
            title: title ?? this.title,
            originalLanguage: originalLanguage ?? this.originalLanguage,
            originalTitle: originalTitle ?? this.originalTitle,
            overview: overview ?? this.overview,
            popularity: popularity ?? this.popularity,
            posterPath: posterPath ?? this.posterPath,
            releaseDate: releaseDate ?? this.releaseDate,
            softcore: softcore ?? this.softcore,
            video: video ?? this.video,
            voteAverage: voteAverage ?? this.voteAverage,
            voteCount: voteCount ?? this.voteCount,
        );

    factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        title: json["title"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        popularity: json["popularity"]?.toDouble(),
        posterPath: json["poster_path"],
        releaseDate: DateTime.parse(json["release_date"]),
        softcore: json["softcore"],
        video: json["video"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
    );

    Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        "title": title,
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "softcore": softcore,
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
    };
}
