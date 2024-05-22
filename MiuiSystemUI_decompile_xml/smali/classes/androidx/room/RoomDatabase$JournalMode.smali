.class public final enum Landroidx/room/RoomDatabase$JournalMode;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Landroidx/room/RoomDatabase$JournalMode;

.field public static final enum TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

.field public static final enum WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/room/RoomDatabase$JournalMode;

    .line 2
    const-string v1, "AUTOMATIC"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    .line 7
    new-instance v1, Landroidx/room/RoomDatabase$JournalMode;

    .line 10
    const-string v2, "TRUNCATE"

    .line 12
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Landroidx/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v1, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    .line 18
    new-instance v2, Landroidx/room/RoomDatabase$JournalMode;

    .line 20
    const-string v3, "WRITE_AHEAD_LOGGING"

    .line 22
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Landroidx/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v2, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 28
    filled-new-array {v0, v1, v2}, [Landroidx/room/RoomDatabase$JournalMode;

    .line 30
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/room/RoomDatabase$JournalMode;->$VALUES:[Landroidx/room/RoomDatabase$JournalMode;

    .line 34
    return-void
    .line 36
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/RoomDatabase$JournalMode;
    .locals 1

    .line 1
    const-class v0, Landroidx/room/RoomDatabase$JournalMode;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/room/RoomDatabase$JournalMode;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Landroidx/room/RoomDatabase$JournalMode;
    .locals 1

    .line 1
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->$VALUES:[Landroidx/room/RoomDatabase$JournalMode;

    .line 2
    invoke-virtual {v0}, [Landroidx/room/RoomDatabase$JournalMode;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/room/RoomDatabase$JournalMode;

    .line 8
    return-object v0
    .line 10
.end method
