.class public final Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;
.super Lcom/android/systemui/qs/pipeline/shared/TileSpec;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "TileSpec.INVALID"

    .line 2
    return-object p0
    .line 4
.end method
