.class public final Lcom/android/systemui/monet/TonalSpec;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final chroma:Lcom/android/systemui/monet/Chroma;

.field public final hue:Lcom/android/systemui/monet/Hue;


# direct methods
.method public constructor <init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/monet/TonalSpec;->hue:Lcom/android/systemui/monet/Hue;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/monet/TonalSpec;->chroma:Lcom/android/systemui/monet/Chroma;

    .line 7
    return-void
    .line 9
.end method
