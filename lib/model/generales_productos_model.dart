// To parse this JSON data, do
//
//     final generalesProductos = generalesProductosFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GeneralesProductos generalesProductosFromJson(String str) => GeneralesProductos.fromJson(json.decode(str));

String generalesProductosToJson(GeneralesProductos data) => json.encode(data.toJson());

class GeneralesProductos {
    GeneralesProductos({
        required this.envasePrimario,
        required this.presentacion,
        required this.viaAdministracion,
        required this.estadoComercial,
        required this.clasificacionMedica,
        required this.unidadMedida,
    });

    List<EnvasePrimario> envasePrimario;
    List<Presentacion> presentacion;
    List<ViaAdministracion> viaAdministracion;
    List<EstadoComercial> estadoComercial;
    List<ClasificacionMedica> clasificacionMedica;
    List<UnidadMedida> unidadMedida;

    factory GeneralesProductos.fromJson(Map<String, dynamic> json) => GeneralesProductos(
        envasePrimario: List<EnvasePrimario>.from(json["envase_primario"].map((x) => EnvasePrimario.fromJson(x))),
        presentacion: List<Presentacion>.from(json["presentacion"].map((x) => Presentacion.fromJson(x))),
        viaAdministracion: List<ViaAdministracion>.from(json["via_administracion"].map((x) => ViaAdministracion.fromJson(x))),
        estadoComercial: List<EstadoComercial>.from(json["estado_comercial"].map((x) => EstadoComercial.fromJson(x))),
        clasificacionMedica: List<ClasificacionMedica>.from(json["clasificacion_medica"].map((x) => ClasificacionMedica.fromJson(x))),
        unidadMedida: List<UnidadMedida>.from(json["unidad_medida"].map((x) => UnidadMedida.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "envase_primario": List<dynamic>.from(envasePrimario.map((x) => x.toJson())),
        "presentacion": List<dynamic>.from(presentacion.map((x) => x.toJson())),
        "via_administracion": List<dynamic>.from(viaAdministracion.map((x) => x.toJson())),
        "estado_comercial": List<dynamic>.from(estadoComercial.map((x) => x.toJson())),
        "clasificacion_medica": List<dynamic>.from(clasificacionMedica.map((x) => x.toJson())),
        "unidad_medida": List<dynamic>.from(unidadMedida.map((x) => x.toJson())),
    };
}

class ClasificacionMedica {
    ClasificacionMedica({
        required this.idClasificacionMedica,
        required this.activo,
        required this.clasificacionMedica,
    });

    int idClasificacionMedica;
    bool activo;
    String clasificacionMedica;

    factory ClasificacionMedica.fromJson(Map<String, dynamic> json) => ClasificacionMedica(
        idClasificacionMedica: json["id_clasificacion_medica"],
        activo: json["activo"],
        clasificacionMedica: json["clasificacion_medica"],
    );

    Map<String, dynamic> toJson() => {
        "id_clasificacion_medica": idClasificacionMedica,
        "activo": activo,
        "clasificacion_medica": clasificacionMedica,
    };
}

class EnvasePrimario {
    EnvasePrimario({
        required this.idEnvase,
        required this.activo,
        required this.envase,
    });

    int idEnvase;
    bool activo;
    String envase;

    factory EnvasePrimario.fromJson(Map<String, dynamic> json) => EnvasePrimario(
        idEnvase: json["id_envase"],
        activo: json["activo"],
        envase: json["envase"],
    );

    Map<String, dynamic> toJson() => {
        "id_envase": idEnvase,
        "activo": activo,
        "envase": envase,
    };
}

class EstadoComercial {
    EstadoComercial({
        required this.idEstadoComercial,
        required this.activo,
        required this.estadoComercial,
    });

    int idEstadoComercial;
    bool activo;
    String estadoComercial;

    factory EstadoComercial.fromJson(Map<String, dynamic> json) => EstadoComercial(
        idEstadoComercial: json["id_estado_comercial"],
        activo: json["activo"],
        estadoComercial: json["estado_comercial"],
    );

    Map<String, dynamic> toJson() => {
        "id_estado_comercial": idEstadoComercial,
        "activo": activo,
        "estado_comercial": estadoComercial,
    };
}

class Presentacion {
    Presentacion({
        required this.idPresentacion,
        required this.activo,
        required this.presentacion,
    });

    int idPresentacion;
    bool activo;
    String presentacion;

    factory Presentacion.fromJson(Map<String, dynamic> json) => Presentacion(
        idPresentacion: json["id_presentacion"],
        activo: json["activo"],
        presentacion: json["presentacion"],
    );

    Map<String, dynamic> toJson() => {
        "id_presentacion": idPresentacion,
        "activo": activo,
        "presentacion": presentacion,
    };
}

class UnidadMedida {
    UnidadMedida({
        required this.idUnidadMedida,
        required this.activo,
        required this.unidadMedida,
    });

    int idUnidadMedida;
    bool activo;
    String unidadMedida;

    factory UnidadMedida.fromJson(Map<String, dynamic> json) => UnidadMedida(
        idUnidadMedida: json["id_unidad_medida"],
        activo: json["activo"],
        unidadMedida: json["unidad_medida"],
    );

    Map<String, dynamic> toJson() => {
        "id_unidad_medida": idUnidadMedida,
        "activo": activo,
        "unidad_medida": unidadMedida,
    };
}

class ViaAdministracion {
    ViaAdministracion({
        required this.idViaAdministracion,
        required this.activo,
        required this.viaAdministracion,
    });

    int idViaAdministracion;
    bool activo;
    String viaAdministracion;

    factory ViaAdministracion.fromJson(Map<String, dynamic> json) => ViaAdministracion(
        idViaAdministracion: json["id_via_administracion"],
        activo: json["activo"],
        viaAdministracion: json["via_administracion"],
    );

    Map<String, dynamic> toJson() => {
        "id_via_administracion": idViaAdministracion,
        "activo": activo,
        "via_administracion": viaAdministracion,
    };
}


/* import 'dart:convert';

GeneralesProductos generalesProductosFromJson(String str) => GeneralesProductos.fromJson(json.decode(str));

String generalesProductosToJson(GeneralesProductos data) => json.encode(data.toJson());

class GeneralesProductos {
    GeneralesProductos({
        required this.envasePrimario,
        required this.presentacion,
        required this.viaAdministracion,
        required this.estadoComercial,
        required this.clasificacionMedica,
        required this.unidadMedida,
    });

    List<EnvasePrimario> envasePrimario;
    List<Presentacion> presentacion;
    List<ViaAdministracion> viaAdministracion;
    List<dynamic> estadoComercial;
    List<dynamic> clasificacionMedica;
    List<UnidadMedida> unidadMedida;

    factory GeneralesProductos.fromJson(Map<String, dynamic> json) => GeneralesProductos(
        envasePrimario: List<EnvasePrimario>.from(json["envase_primario"].map((x) => EnvasePrimario.fromJson(x))),
        presentacion: List<Presentacion>.from(json["presentacion"].map((x) => Presentacion.fromJson(x))),
        viaAdministracion: List<ViaAdministracion>.from(json["via_administracion"].map((x) => ViaAdministracion.fromJson(x))),
        estadoComercial: List<dynamic>.from(json["estado_comercial"].map((x) => x)),
        clasificacionMedica: List<dynamic>.from(json["clasificacion_medica"].map((x) => x)),
        unidadMedida: List<UnidadMedida>.from(json["unidad_medida"].map((x) => UnidadMedida.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "envase_primario": List<dynamic>.from(envasePrimario.map((x) => x.toJson())),
        "presentacion": List<String>.from(presentacion.map((x) => x.toJson())),
        "via_administracion": List<dynamic>.from(viaAdministracion.map((x) => x.toJson())),
        "estado_comercial": List<dynamic>.from(estadoComercial.map((x) => x)),
        "clasificacion_medica": List<dynamic>.from(clasificacionMedica.map((x) => x)),
        "unidad_medida": List<dynamic>.from(unidadMedida.map((x) => x.toJson())),
    };
}

class EnvasePrimario {
    EnvasePrimario({
        required this.idEnvase,
        required this.activo,
        required this.envase,
    });

    int idEnvase;
    bool activo;
    String envase;

    factory EnvasePrimario.fromJson(Map<String, dynamic> json) => EnvasePrimario(
        idEnvase: json["id_envase"],
        activo: json["activo"],
        envase: json["envase"],
    );

    Map<String, dynamic> toJson() => {
        "id_envase": idEnvase,
        "activo": activo,
        "envase": envase,
    };
}

class Presentacion {
    Presentacion({
        required this.idPresentacion,
        required this.activo,
        required this.presentacion,
    });

    int idPresentacion;
    bool activo;
    String presentacion;

    factory Presentacion.fromJson(Map<String, dynamic> json) => Presentacion(
        idPresentacion: json["id_presentacion"],
        activo: json["activo"],
        presentacion: json["presentacion"],
    );

    Map<String, dynamic> toJson() => {
        "id_presentacion": idPresentacion,
        "activo": activo,
        "presentacion": presentacion,
    };
}

class UnidadMedida {
    UnidadMedida({
        required this.idUnidadMedida,
        required this.activo,
        required this.unidadMedida,
    });

    int idUnidadMedida;
    bool activo;
    String unidadMedida;

    factory UnidadMedida.fromJson(Map<String, dynamic> json) => UnidadMedida(
        idUnidadMedida: json["id_unidad_medida"],
        activo: json["activo"],
        unidadMedida: json["unidad_medida"],
    );

    Map<String, dynamic> toJson() => {
        "id_unidad_medida": idUnidadMedida,
        "activo": activo,
        "unidad_medida": unidadMedida,
    };
}

class ViaAdministracion {
    ViaAdministracion({
        required this.idViaAdministracion,
        required this.activo,
        required this.viaAdministracion,
    });

    int idViaAdministracion;
    bool activo;
    String viaAdministracion;

    factory ViaAdministracion.fromJson(Map<String, dynamic> json) => ViaAdministracion(
        idViaAdministracion: json["id_via_administracion"],
        activo: json["activo"],
        viaAdministracion: json["via_administracion"],
    );

    Map<String, dynamic> toJson() => {
        "id_via_administracion": idViaAdministracion,
        "activo": activo,
        "via_administracion": viaAdministracion,
    };
}
 */

// To parse this JSON data, do
//
//     final generalesProductos = generalesProductosFromJson(jsonString);

/* import 'dart:convert';

GeneralesProductos generalesProductosFromJson(String str) => GeneralesProductos.fromJson(json.decode(str));

String generalesProductosToJson(GeneralesProductos data) => json.encode(data.toJson());

class GeneralesProductos {
    GeneralesProductos({
        required this.abilities,
        required this.baseExperience,
        required this.forms,
        required this.gameIndices,
        required this.height,
        required this.heldItems,
        required this.id,
        required this.isDefault,
        required this.locationAreaEncounters,
        required this.moves,
        required this.name,
        required this.order,
        required this.pastTypes,
        required this.species,
        required this.sprites,
        required this.stats,
        required this.types,
        required this.weight,
    });

    List<Ability> abilities;
    int baseExperience;
    List<Species> forms;
    List<GameIndex> gameIndices;
    int height;
    List<HeldItem> heldItems;
    int id;
    bool isDefault;
    String locationAreaEncounters;
    List<Move> moves;
    String name;
    int order;
    List<dynamic> pastTypes;
    Species species;
    Sprites sprites;
    List<Stat> stats;
    List<Type> types;
    int weight;

    factory GeneralesProductos.fromJson(Map<String, dynamic> json) => GeneralesProductos(
        abilities: List<Ability>.from(json["abilities"].map((x) => Ability.fromJson(x))),
        baseExperience: json["base_experience"],
        forms: List<Species>.from(json["forms"].map((x) => Species.fromJson(x))),
        gameIndices: List<GameIndex>.from(json["game_indices"].map((x) => GameIndex.fromJson(x))),
        height: json["height"],
        heldItems: List<HeldItem>.from(json["held_items"].map((x) => HeldItem.fromJson(x))),
        id: json["id"],
        isDefault: json["is_default"],
        locationAreaEncounters: json["location_area_encounters"],
        moves: List<Move>.from(json["moves"].map((x) => Move.fromJson(x))),
        name: json["name"],
        order: json["order"],
        pastTypes: List<dynamic>.from(json["past_types"].map((x) => x)),
        species: Species.fromJson(json["species"]),
        sprites: Sprites.fromJson(json["sprites"]),
        stats: List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
        weight: json["weight"],
    );

    Map<String, dynamic> toJson() => {
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
        "base_experience": baseExperience,
        "forms": List<dynamic>.from(forms.map((x) => x.toJson())),
        "game_indices": List<dynamic>.from(gameIndices.map((x) => x.toJson())),
        "height": height,
        "held_items": List<dynamic>.from(heldItems.map((x) => x.toJson())),
        "id": id,
        "is_default": isDefault,
        "location_area_encounters": locationAreaEncounters,
        "moves": List<dynamic>.from(moves.map((x) => x.toJson())),
        "name": name,
        "order": order,
        "past_types": List<dynamic>.from(pastTypes.map((x) => x)),
        "species": species.toJson(),
        "sprites": sprites.toJson(),
        "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "weight": weight,
    };
}

class Ability {
    Ability({
        required this.ability,
        required this.isHidden,
        required this.slot,
    });

    Species ability;
    bool isHidden;
    int slot;

    factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        ability: Species.fromJson(json["ability"]),
        isHidden: json["is_hidden"],
        slot: json["slot"],
    );

    Map<String, dynamic> toJson() => {
        "ability": ability.toJson(),
        "is_hidden": isHidden,
        "slot": slot,
    };
}

class Species {
    Species({
        required this.name,
        required this.url,
    });

    String name;
    String url;

    factory Species.fromJson(Map<String, dynamic> json) => Species(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}

class GameIndex {
    GameIndex({
        required this.gameIndex,
        required this.version,
    });

    int gameIndex;
    Species version;

    factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        version: Species.fromJson(json["version"]),
    );

    Map<String, dynamic> toJson() => {
        "game_index": gameIndex,
        "version": version.toJson(),
    };
}

class HeldItem {
    HeldItem({
        required this.item,
        required this.versionDetails,
    });

    Species item;
    List<VersionDetail> versionDetails;

    factory HeldItem.fromJson(Map<String, dynamic> json) => HeldItem(
        item: Species.fromJson(json["item"]),
        versionDetails: List<VersionDetail>.from(json["version_details"].map((x) => VersionDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "item": item.toJson(),
        "version_details": List<dynamic>.from(versionDetails.map((x) => x.toJson())),
    };
}

class VersionDetail {
    VersionDetail({
        required this.rarity,
        required this.version,
    });

    int rarity;
    Species version;

    factory VersionDetail.fromJson(Map<String, dynamic> json) => VersionDetail(
        rarity: json["rarity"],
        version: Species.fromJson(json["version"]),
    );

    Map<String, dynamic> toJson() => {
        "rarity": rarity,
        "version": version.toJson(),
    };
}

class Move {
    Move({
        required this.move,
        required this.versionGroupDetails,
    });

    Species move;
    List<VersionGroupDetail> versionGroupDetails;

    factory Move.fromJson(Map<String, dynamic> json) => Move(
        move: Species.fromJson(json["move"]),
        versionGroupDetails: List<VersionGroupDetail>.from(json["version_group_details"].map((x) => VersionGroupDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "move": move.toJson(),
        "version_group_details": List<dynamic>.from(versionGroupDetails.map((x) => x.toJson())),
    };
}

class VersionGroupDetail {
    VersionGroupDetail({
        required this.levelLearnedAt,
        required this.moveLearnMethod,
        required this.versionGroup,
    });

    int levelLearnedAt;
    Species moveLearnMethod;
    Species versionGroup;

    factory VersionGroupDetail.fromJson(Map<String, dynamic> json) => VersionGroupDetail(
        levelLearnedAt: json["level_learned_at"],
        moveLearnMethod: Species.fromJson(json["move_learn_method"]),
        versionGroup: Species.fromJson(json["version_group"]),
    );

    Map<String, dynamic> toJson() => {
        "level_learned_at": levelLearnedAt,
        "move_learn_method": moveLearnMethod.toJson(),
        "version_group": versionGroup.toJson(),
    };
}

class GenerationV {
    GenerationV({
        required this.blackWhite,
    });

    Sprites blackWhite;

    factory GenerationV.fromJson(Map<String, dynamic> json) => GenerationV(
        blackWhite: Sprites.fromJson(json["black-white"]),
    );

    Map<String, dynamic> toJson() => {
        "black-white": blackWhite.toJson(),
    };
}

class GenerationIv {
    GenerationIv({
        required this.diamondPearl,
        required this.heartgoldSoulsilver,
        required this.platinum,
    });

    Sprites diamondPearl;
    Sprites heartgoldSoulsilver;
    Sprites platinum;

    factory GenerationIv.fromJson(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: Sprites.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: Sprites.fromJson(json["heartgold-soulsilver"]),
        platinum: Sprites.fromJson(json["platinum"]),
    );

    Map<String, dynamic> toJson() => {
        "diamond-pearl": diamondPearl.toJson(),
        "heartgold-soulsilver": heartgoldSoulsilver.toJson(),
        "platinum": platinum.toJson(),
    };
}

class Versions {
    Versions({
        required this.generationI,
        required this.generationIi,
        required this.generationIii,
        required this.generationIv,
        required this.generationV,
        required this.generationVi,
        required this.generationVii,
        required this.generationViii,
    });

    GenerationI generationI;
    GenerationIi generationIi;
    GenerationIii generationIii;
    GenerationIv generationIv;
    GenerationV generationV;
    Map<String, Home> generationVi;
    GenerationVii generationVii;
    GenerationViii generationViii;

    factory Versions.fromJson(Map<String, dynamic> json) => Versions(
        generationI: GenerationI.fromJson(json["generation-i"]),
        generationIi: GenerationIi.fromJson(json["generation-ii"]),
        generationIii: GenerationIii.fromJson(json["generation-iii"]),
        generationIv: GenerationIv.fromJson(json["generation-iv"]),
        generationV: GenerationV.fromJson(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"]).map((k, v) => MapEntry<String, Home>(k, Home.fromJson(v))),
        generationVii: GenerationVii.fromJson(json["generation-vii"]),
        generationViii: GenerationViii.fromJson(json["generation-viii"]),
    );

    Map<String, dynamic> toJson() => {
        "generation-i": generationI.toJson(),
        "generation-ii": generationIi.toJson(),
        "generation-iii": generationIii.toJson(),
        "generation-iv": generationIv.toJson(),
        "generation-v": generationV.toJson(),
        "generation-vi": Map.from(generationVi).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "generation-vii": generationVii.toJson(),
        "generation-viii": generationViii.toJson(),
    };
}

class Sprites {
    Sprites({
        required this.backDefault,
        required this.backFemale,
        required this.backShiny,
        required this.backShinyFemale,
        required this.frontDefault,
        required this.frontFemale,
        required this.frontShiny,
        required this.frontShinyFemale,
    });

    String backDefault;
    dynamic backFemale;
    String backShiny;
    dynamic backShinyFemale;
    String frontDefault;
    dynamic frontFemale;
    String frontShiny;
    dynamic frontShinyFemale;

    factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
        backDefault: json["back_default"],
        backFemale: json["back_female"],
        backShiny: json["back_shiny"],
        backShinyFemale: json["back_shiny_female"],
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
    );

    Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_female": backFemale,
        "back_shiny": backShiny,
        "back_shiny_female": backShinyFemale,
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
    };
}

class GenerationI {
    GenerationI({
        required this.redBlue,
        required this.yellow,
    });

    RedBlue redBlue;
    RedBlue yellow;

    factory GenerationI.fromJson(Map<String, dynamic> json) => GenerationI(
        redBlue: RedBlue.fromJson(json["red-blue"]),
        yellow: RedBlue.fromJson(json["yellow"]),
    );

    Map<String, dynamic> toJson() => {
        "red-blue": redBlue.toJson(),
        "yellow": yellow.toJson(),
    };
}

class RedBlue {
    RedBlue({
        required this.backDefault,
        required this.backGray,
        required this.backTransparent,
        required this.frontDefault,
        required this.frontGray,
        required this.frontTransparent,
    });

    String backDefault;
    String backGray;
    String backTransparent;
    String frontDefault;
    String frontGray;
    String frontTransparent;

    factory RedBlue.fromJson(Map<String, dynamic> json) => RedBlue(
        backDefault: json["back_default"],
        backGray: json["back_gray"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontGray: json["front_gray"],
        frontTransparent: json["front_transparent"],
    );

    Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_gray": backGray,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_gray": frontGray,
        "front_transparent": frontTransparent,
    };
}

class GenerationIi {
    GenerationIi({
        required this.crystal,
        required this.gold,
        required this.silver,
    });

    Crystal crystal;
    Gold gold;
    Gold silver;

    factory GenerationIi.fromJson(Map<String, dynamic> json) => GenerationIi(
        crystal: Crystal.fromJson(json["crystal"]),
        gold: Gold.fromJson(json["gold"]),
        silver: Gold.fromJson(json["silver"]),
    );

    Map<String, dynamic> toJson() => {
        "crystal": crystal.toJson(),
        "gold": gold.toJson(),
        "silver": silver.toJson(),
    };
}

class Crystal {
    Crystal({
        required this.backDefault,
        required this.backShiny,
        required this.backShinyTransparent,
        required this.backTransparent,
        required this.frontDefault,
        required this.frontShiny,
        required this.frontShinyTransparent,
        required this.frontTransparent,
    });

    String backDefault;
    String backShiny;
    String backShinyTransparent;
    String backTransparent;
    String frontDefault;
    String frontShiny;
    String frontShinyTransparent;
    String frontTransparent;

    factory Crystal.fromJson(Map<String, dynamic> json) => Crystal(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        backShinyTransparent: json["back_shiny_transparent"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontShinyTransparent: json["front_shiny_transparent"],
        frontTransparent: json["front_transparent"],
    );

    Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "back_shiny_transparent": backShinyTransparent,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_shiny_transparent": frontShinyTransparent,
        "front_transparent": frontTransparent,
    };
}

class Gold {
    Gold({
        required this.backDefault,
        required this.backShiny,
        required this.frontDefault,
        required this.frontShiny,
        required this.frontTransparent,
    });

    String backDefault;
    String backShiny;
    String frontDefault;
    String frontShiny;
    String frontTransparent;

    factory Gold.fromJson(Map<String, dynamic> json) => Gold(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontTransparent: json["front_transparent"] == null ? null : json["front_transparent"],
    );

    Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_transparent": frontTransparent == null ? null : frontTransparent,
    };
}

class GenerationIii {
    GenerationIii({
        required this.emerald,
        required this.fireredLeafgreen,
        required this.rubySapphire,
    });

    Emerald emerald;
    Gold fireredLeafgreen;
    Gold rubySapphire;

    factory GenerationIii.fromJson(Map<String, dynamic> json) => GenerationIii(
        emerald: Emerald.fromJson(json["emerald"]),
        fireredLeafgreen: Gold.fromJson(json["firered-leafgreen"]),
        rubySapphire: Gold.fromJson(json["ruby-sapphire"]),
    );

    Map<String, dynamic> toJson() => {
        "emerald": emerald.toJson(),
        "firered-leafgreen": fireredLeafgreen.toJson(),
        "ruby-sapphire": rubySapphire.toJson(),
    };
}

class Emerald {
    Emerald({
        required this.frontDefault,
        required this.frontShiny,
    });

    String frontDefault;
    String frontShiny;

    factory Emerald.fromJson(Map<String, dynamic> json) => Emerald(
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
    );

    Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_shiny": frontShiny,
    };
}

class Home {
    Home({
        required this.frontDefault,
        required this.frontFemale,
        required this.frontShiny,
        required this.frontShinyFemale,
    });

    String frontDefault;
    dynamic frontFemale;
    String frontShiny;
    dynamic frontShinyFemale;

    factory Home.fromJson(Map<String, dynamic> json) => Home(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
    );

    Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
    };
}

class GenerationVii {
    GenerationVii({
        required this.icons,
        required this.ultraSunUltraMoon,
    });

    DreamWorld icons;
    Home ultraSunUltraMoon;

    factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
        icons: DreamWorld.fromJson(json["icons"]),
        ultraSunUltraMoon: Home.fromJson(json["ultra-sun-ultra-moon"]),
    );

    Map<String, dynamic> toJson() => {
        "icons": icons.toJson(),
        "ultra-sun-ultra-moon": ultraSunUltraMoon.toJson(),
    };
}

class DreamWorld {
    DreamWorld({
        required this.frontDefault,
        required this.frontFemale,
    });

    String frontDefault;
    dynamic frontFemale;

    factory DreamWorld.fromJson(Map<String, dynamic> json) => DreamWorld(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
    );

    Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
    };
}

class GenerationViii {
    GenerationViii({
        required this.icons,
    });

    DreamWorld icons;

    factory GenerationViii.fromJson(Map<String, dynamic> json) => GenerationViii(
        icons: DreamWorld.fromJson(json["icons"]),
    );

    Map<String, dynamic> toJson() => {
        "icons": icons.toJson(),
    };
}

class Other {
    Other({
        required this.dreamWorld,
        required this.home,
        required this.officialArtwork,
    });

    DreamWorld dreamWorld;
    Home home;
    OfficialArtwork officialArtwork;

    factory Other.fromJson(Map<String, dynamic> json) => Other(
        dreamWorld: DreamWorld.fromJson(json["dream_world"]),
        home: Home.fromJson(json["home"]),
        officialArtwork: OfficialArtwork.fromJson(json["official-artwork"]),
    );

    Map<String, dynamic> toJson() => {
        "dream_world": dreamWorld.toJson(),
        "home": home.toJson(),
        "official-artwork": officialArtwork.toJson(),
    };
}

class OfficialArtwork {
    OfficialArtwork({
        required this.frontDefault,
    });

    String frontDefault;

    factory OfficialArtwork.fromJson(Map<String, dynamic> json) => OfficialArtwork(
        frontDefault: json["front_default"],
    );

    Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
    };
}

class Stat {
    Stat({
        required this.baseStat,
        required this.effort,
        required this.stat,
    });

    int baseStat;
    int effort;
    Species stat;

    factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: Species.fromJson(json["stat"]),
    );

    Map<String, dynamic> toJson() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat.toJson(),
    };
}

class Type {
    Type({
        required this.slot,
        required this.type,
    });

    int slot;
    Species type;

    factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: Species.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type.toJson(),
    };
}
 */