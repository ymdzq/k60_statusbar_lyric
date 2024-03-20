.class Lcom/android/settings/wifi/linkturbo/ApkIconLoader$DrawableHolder;
.super Lcom/android/settings/wifi/linkturbo/ApkIconLoader$ImageHolder;
.source "ApkIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/linkturbo/ApkIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableHolder"
.end annotation


# instance fields
.field drawableRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$ImageHolder;-><init>(Lcom/android/settings/wifi/linkturbo/ApkIconLoader$ImageHolder-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/linkturbo/ApkIconLoader$DrawableHolder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$DrawableHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public isNull()Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$DrawableHolder;->drawableRef:Ljava/lang/ref/SoftReference;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setImage(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$DrawableHolder;->drawableRef:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$DrawableHolder;->drawableRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/ApkIconLoader$DrawableHolder;->drawableRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    return p0
.end method
