# classes.dex

.class public final enum Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
.super Ljava/lang/Enum;
.source "HandlerEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/lyrics/HandlerEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum LYRIC_HANDLER:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum NOTHING:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum PLAYBACK_STATE:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum SET_SHOW_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum SET_SHOW_PACKAGE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum SHOW_BLUETHOOTH_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum SWTICH_LYRIC_ANIMATION:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum SWTICH_STATUSBAR_LYRIC_SIMPLE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum SWTICH_SYSTEM_STATUSBAR_LYRIC:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum SWTICH_SYSTEM_STATUSBAR_SHOW_APP_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;


# instance fields
.field private final what:I


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
    .registers 10

    .line 3
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->LYRIC_HANDLER:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SHOW_BLUETHOOTH_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v2, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_SYSTEM_STATUSBAR_LYRIC:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v3, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->PLAYBACK_STATE:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v4, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_LYRIC_ANIMATION:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v5, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v6, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_PACKAGE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v7, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_SYSTEM_STATUSBAR_SHOW_APP_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v8, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_STATUSBAR_LYRIC_SIMPLE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v9, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->NOTHING:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    filled-new-array/range {v0 .. v9}, [Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "LYRIC_HANDLER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->LYRIC_HANDLER:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "SHOW_BLUETHOOTH_LYRICS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SHOW_BLUETHOOTH_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "SWTICH_SYSTEM_STATUSBAR_LYRIC"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_SYSTEM_STATUSBAR_LYRIC:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "PLAYBACK_STATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->PLAYBACK_STATE:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "SWTICH_LYRIC_ANIMATION"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_LYRIC_ANIMATION:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "SET_SHOW_LYRICS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 12
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "SET_SHOW_PACKAGE_ICON"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_PACKAGE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "SWTICH_SYSTEM_STATUSBAR_SHOW_APP_ICON"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_SYSTEM_STATUSBAR_SHOW_APP_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 14
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "SWTICH_STATUSBAR_LYRIC_SIMPLE_ICON"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_STATUSBAR_LYRIC_SIMPLE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "NOTHING"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->NOTHING:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 3
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->$values()[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->$VALUES:[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->what:I

    return-void
.end method

.method static getHandlerEnum(I)Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
    .registers 6

    .line 19
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->values()[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 20
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v4

    if-ne p0, v4, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 24
    :cond_14
    sget-object p0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->NOTHING:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
    .registers 2

    .line 3
    const-class v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
    .registers 1

    .line 3
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->$VALUES:[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    return-object v0
.end method


# virtual methods
.method public getWhat()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->what:I

    return p0
.end method
