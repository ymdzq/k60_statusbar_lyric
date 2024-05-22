# classes5.dex

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

.field public static final enum LYRIC_TEXT_SIZE:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum NOTHING:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum PLAYBACK_STATE:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

.field public static final enum SCREEN_ON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

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
    .registers 12

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

    sget-object v9, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SCREEN_ON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v10, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->LYRIC_TEXT_SIZE:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    sget-object v11, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->NOTHING:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    filled-new-array/range {v0 .. v11}, [Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

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

    const-string v1, "SCREEN_ON"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SCREEN_ON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    const-string v1, "LYRIC_TEXT_SIZE"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->LYRIC_TEXT_SIZE:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    .line 17
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
    .param p3, "what"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->what:I

    .line 34
    return-void
.end method

.method static getHandlerEnum(I)Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
    .registers 6
    .param p0, "what"  # I

    .line 21
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->values()[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 22
    .local v3, "handlerEnum":Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v4

    if-ne p0, v4, :cond_11

    .line 23
    return-object v3

    .line 21
    .end local v3  # "handlerEnum":Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 26
    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->NOTHING:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    return-object v0
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
    .registers 2

    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->what:I

    return v0
.end method
