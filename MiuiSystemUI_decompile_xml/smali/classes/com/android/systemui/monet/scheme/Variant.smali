.class public final enum Lcom/android/systemui/monet/scheme/Variant;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/monet/scheme/Variant;

.field public static final enum CONTENT:Lcom/android/systemui/monet/scheme/Variant;

.field public static final enum EXPRESSIVE:Lcom/android/systemui/monet/scheme/Variant;

.field public static final enum FIDELITY:Lcom/android/systemui/monet/scheme/Variant;

.field public static final enum FRUIT_SALAD:Lcom/android/systemui/monet/scheme/Variant;

.field public static final enum MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

.field public static final enum NEUTRAL:Lcom/android/systemui/monet/scheme/Variant;

.field public static final enum RAINBOW:Lcom/android/systemui/monet/scheme/Variant;

.field public static final enum TONAL_SPOT:Lcom/android/systemui/monet/scheme/Variant;

.field public static final enum VIBRANT:Lcom/android/systemui/monet/scheme/Variant;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    const-string v1, "MONOCHROME"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/monet/scheme/Variant;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 10
    new-instance v1, Lcom/android/systemui/monet/scheme/Variant;

    .line 12
    const-string v2, "NEUTRAL"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/monet/scheme/Variant;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/android/systemui/monet/scheme/Variant;->NEUTRAL:Lcom/android/systemui/monet/scheme/Variant;

    .line 20
    new-instance v2, Lcom/android/systemui/monet/scheme/Variant;

    .line 22
    const-string v3, "TONAL_SPOT"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/monet/scheme/Variant;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/android/systemui/monet/scheme/Variant;->TONAL_SPOT:Lcom/android/systemui/monet/scheme/Variant;

    .line 30
    new-instance v3, Lcom/android/systemui/monet/scheme/Variant;

    .line 32
    const-string v4, "VIBRANT"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/monet/scheme/Variant;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/android/systemui/monet/scheme/Variant;->VIBRANT:Lcom/android/systemui/monet/scheme/Variant;

    .line 40
    new-instance v4, Lcom/android/systemui/monet/scheme/Variant;

    .line 42
    const-string v5, "EXPRESSIVE"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/monet/scheme/Variant;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/android/systemui/monet/scheme/Variant;->EXPRESSIVE:Lcom/android/systemui/monet/scheme/Variant;

    .line 50
    new-instance v5, Lcom/android/systemui/monet/scheme/Variant;

    .line 52
    const-string v6, "FIDELITY"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/monet/scheme/Variant;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/android/systemui/monet/scheme/Variant;->FIDELITY:Lcom/android/systemui/monet/scheme/Variant;

    .line 60
    new-instance v6, Lcom/android/systemui/monet/scheme/Variant;

    .line 62
    const-string v7, "CONTENT"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/monet/scheme/Variant;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/android/systemui/monet/scheme/Variant;->CONTENT:Lcom/android/systemui/monet/scheme/Variant;

    .line 70
    new-instance v7, Lcom/android/systemui/monet/scheme/Variant;

    .line 72
    const-string v8, "RAINBOW"

    .line 74
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Lcom/android/systemui/monet/scheme/Variant;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v7, Lcom/android/systemui/monet/scheme/Variant;->RAINBOW:Lcom/android/systemui/monet/scheme/Variant;

    .line 80
    new-instance v8, Lcom/android/systemui/monet/scheme/Variant;

    .line 82
    const-string v9, "FRUIT_SALAD"

    .line 84
    const/16 v10, 0x8

    .line 86
    invoke-direct {v8, v9, v10}, Lcom/android/systemui/monet/scheme/Variant;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v8, Lcom/android/systemui/monet/scheme/Variant;->FRUIT_SALAD:Lcom/android/systemui/monet/scheme/Variant;

    .line 91
    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/monet/scheme/Variant;

    .line 93
    move-result-object v0

    .line 96
    sput-object v0, Lcom/android/systemui/monet/scheme/Variant;->$VALUES:[Lcom/android/systemui/monet/scheme/Variant;

    .line 97
    return-void
    .line 99
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/monet/scheme/Variant;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/monet/scheme/Variant;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/monet/scheme/Variant;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/monet/scheme/Variant;->$VALUES:[Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    invoke-virtual {v0}, [Lcom/android/systemui/monet/scheme/Variant;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/monet/scheme/Variant;

    .line 8
    return-object v0
    .line 10
.end method
