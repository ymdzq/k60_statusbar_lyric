.class public final Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand$execute$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand$execute$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand$execute$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand$execute$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand$execute$1;->INSTANCE:Lcom/android/systemui/qs/external/TileServiceRequestController$TileServiceRequestCommand$execute$1;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p0

    .line 7
    const-string p1, "Response: "

    .line 8
    const-string v0, "TileServiceRequestController"

    .line 10
    invoke-static {p1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    return-void
    .line 15
.end method
