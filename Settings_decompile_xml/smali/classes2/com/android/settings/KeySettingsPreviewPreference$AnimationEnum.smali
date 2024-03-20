.class final enum Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;
.super Ljava/lang/Enum;
.source "KeySettingsPreviewPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KeySettingsPreviewPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

.field public static final enum CLICK_BOTTOM:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

.field public static final enum DOUBLE_CLICK_POWER:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

.field public static final enum LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

.field public static final enum LONG_PRESS_POWER:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

.field public static final enum POWER_CLICK:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

.field public static final enum THREE_DROP:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

.field public static final enum THREE_LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;


# instance fields
.field private mAnimArrayId:I

.field private mImgViewId:I


# direct methods
.method private static synthetic $values()[Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;
    .locals 7

    .line 40
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->POWER_CLICK:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget-object v1, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget-object v2, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->CLICK_BOTTOM:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget-object v3, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->DOUBLE_CLICK_POWER:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget-object v4, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->THREE_DROP:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget-object v5, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->THREE_LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget-object v6, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->LONG_PRESS_POWER:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    filled-new-array/range {v0 .. v6}, [Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimArrayId(Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->mAnimArrayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImgViewId(Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->mImgViewId:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$id;->key_power_click:I

    sget v2, Lcom/android/settings/R$array;->power_click:I

    const-string v3, "POWER_CLICK"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->POWER_CLICK:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    .line 43
    new-instance v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$id;->key_long_press_bottom:I

    sget v2, Lcom/android/settings/R$array;->long_press:I

    const-string v3, "LONG_PRESS"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    .line 44
    new-instance v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$id;->key_click_bottom:I

    sget v2, Lcom/android/settings/R$array;->click_bottom:I

    const-string v3, "CLICK_BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->CLICK_BOTTOM:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    .line 45
    new-instance v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v1, Lcom/android/settings/R$id;->key_power_double_click:I

    sget v2, Lcom/android/settings/R$array;->power_double_click:I

    const-string v3, "DOUBLE_CLICK_POWER"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->DOUBLE_CLICK_POWER:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    .line 46
    new-instance v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v2, Lcom/android/settings/R$id;->key_three_gesture:I

    sget v3, Lcom/android/settings/R$array;->three_drop:I

    const-string v4, "THREE_DROP"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->THREE_DROP:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    .line 47
    new-instance v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    sget v2, Lcom/android/settings/R$id;->key_three_long_press:I

    sget v3, Lcom/android/settings/R$array;->three_long_press:I

    const-string v4, "THREE_LONG_PRESS"

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->THREE_LONG_PRESS:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    .line 48
    new-instance v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    const/4 v2, 0x6

    sget v3, Lcom/android/settings/R$array;->power_long_press:I

    const-string v4, "LONG_PRESS_POWER"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->LONG_PRESS_POWER:Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    .line 40
    invoke-static {}, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->$values()[Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    move-result-object v0

    sput-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->$VALUES:[Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->mImgViewId:I

    .line 55
    iput p4, p0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->mAnimArrayId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;
    .locals 1

    .line 40
    const-class v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;
    .locals 1

    .line 40
    sget-object v0, Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->$VALUES:[Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    invoke-virtual {v0}, [Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;

    return-object v0
.end method
