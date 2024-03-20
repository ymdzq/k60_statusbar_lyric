.class public final enum Lcom/googlecode/leptonica/android/Scale$ScaleType;
.super Ljava/lang/Enum;
.source "Scale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/leptonica/android/Scale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/googlecode/leptonica/android/Scale$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/leptonica/android/Scale$ScaleType;

.field public static final enum FILL:Lcom/googlecode/leptonica/android/Scale$ScaleType;

.field public static final enum FIT:Lcom/googlecode/leptonica/android/Scale$ScaleType;

.field public static final enum FIT_SHRINK:Lcom/googlecode/leptonica/android/Scale$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/googlecode/leptonica/android/Scale$ScaleType;

    const-string v1, "FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/googlecode/leptonica/android/Scale$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/leptonica/android/Scale$ScaleType;->FILL:Lcom/googlecode/leptonica/android/Scale$ScaleType;

    .line 38
    new-instance v1, Lcom/googlecode/leptonica/android/Scale$ScaleType;

    const-string v2, "FIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/googlecode/leptonica/android/Scale$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/googlecode/leptonica/android/Scale$ScaleType;->FIT:Lcom/googlecode/leptonica/android/Scale$ScaleType;

    .line 45
    new-instance v2, Lcom/googlecode/leptonica/android/Scale$ScaleType;

    const-string v3, "FIT_SHRINK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/googlecode/leptonica/android/Scale$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/googlecode/leptonica/android/Scale$ScaleType;->FIT_SHRINK:Lcom/googlecode/leptonica/android/Scale$ScaleType;

    .line 29
    filled-new-array {v0, v1, v2}, [Lcom/googlecode/leptonica/android/Scale$ScaleType;

    move-result-object v0

    sput-object v0, Lcom/googlecode/leptonica/android/Scale$ScaleType;->$VALUES:[Lcom/googlecode/leptonica/android/Scale$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/leptonica/android/Scale$ScaleType;
    .locals 1

    .line 29
    const-class v0, Lcom/googlecode/leptonica/android/Scale$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/googlecode/leptonica/android/Scale$ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/googlecode/leptonica/android/Scale$ScaleType;
    .locals 1

    .line 29
    sget-object v0, Lcom/googlecode/leptonica/android/Scale$ScaleType;->$VALUES:[Lcom/googlecode/leptonica/android/Scale$ScaleType;

    invoke-virtual {v0}, [Lcom/googlecode/leptonica/android/Scale$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/leptonica/android/Scale$ScaleType;

    return-object v0
.end method
