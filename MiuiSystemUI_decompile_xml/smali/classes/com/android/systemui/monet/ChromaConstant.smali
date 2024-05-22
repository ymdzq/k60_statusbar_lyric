.class public final Lcom/android/systemui/monet/ChromaConstant;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/monet/Chroma;


# instance fields
.field public final chroma:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/systemui/monet/ChromaConstant;->chroma:D

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 0

    .line 1
    iget-wide p0, p0, Lcom/android/systemui/monet/ChromaConstant;->chroma:D

    .line 2
    return-wide p0
    .line 4
.end method
