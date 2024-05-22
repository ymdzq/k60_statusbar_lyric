.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadBitmapFromUri$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadBitmapFromUri$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    .line 2
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 6
    move-result p3

    .line 9
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    .line 10
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 14
    move-result p2

    .line 17
    new-instance v0, Landroid/util/Pair;

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    new-instance v1, Landroid/util/Pair;

    .line 31
    iget-object v2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadBitmapFromUri$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 33
    iget v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->artworkWidth:I

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v2

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadBitmapFromUri$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 41
    iget p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->artworkHeight:I

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p0

    .line 48
    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    check-cast p0, Ljava/lang/Integer;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result p0

    .line 59
    int-to-float p0, p0

    .line 60
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 61
    check-cast v0, Ljava/lang/Integer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v0

    .line 68
    int-to-float v0, v0

    .line 69
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    check-cast v2, Ljava/lang/Integer;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v2

    .line 77
    int-to-float v2, v2

    .line 78
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 79
    check-cast v1, Ljava/lang/Integer;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result v1

    .line 86
    int-to-float v1, v1

    .line 87
    const/4 v3, 0x0

    .line 88
    cmpl-float v4, p0, v3

    .line 89
    if-eqz v4, :cond_2

    .line 91
    cmpl-float v4, v0, v3

    .line 93
    if-eqz v4, :cond_2

    .line 95
    cmpl-float v4, v2, v3

    .line 97
    if-eqz v4, :cond_2

    .line 99
    cmpl-float v4, v1, v3

    .line 101
    if-nez v4, :cond_0

    .line 103
    goto :goto_0

    .line 105
    :cond_0
    div-float v4, p0, v0

    .line 106
    div-float v5, v2, v1

    .line 108
    cmpl-float v4, v4, v5

    .line 110
    if-lez v4, :cond_1

    .line 112
    div-float/2addr v1, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    div-float v1, v2, p0

    .line 116
    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    move v1, v3

    .line 119
    :goto_1
    cmpg-float p0, v1, v3

    .line 120
    const/4 v0, 0x1

    .line 122
    if-nez p0, :cond_3

    .line 123
    move p0, v0

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const/4 p0, 0x0

    .line 127
    :goto_2
    if-nez p0, :cond_4

    .line 128
    const/high16 p0, 0x3f800000    # 1.0f

    .line 130
    cmpg-float p0, v1, p0

    .line 132
    if-gez p0, :cond_4

    .line 134
    int-to-float p0, p3

    .line 136
    mul-float/2addr p0, v1

    .line 137
    float-to-int p0, p0

    .line 138
    int-to-float p2, p2

    .line 139
    mul-float/2addr v1, p2

    .line 140
    float-to-int p2, v1

    .line 141
    invoke-virtual {p1, p0, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 142
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 145
    return-void
    .line 148
.end method
