.class abstract Lcom/android/settings/ApkIconLoader$ImageHolder;
.super Ljava/lang/Object;
.source "ApkIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApkIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ImageHolder"
.end annotation


# instance fields
.field state:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApkIconLoader$ImageHolder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ApkIconLoader$ImageHolder;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/settings/ApkIconLoader$ImageHolder;
    .locals 2

    .line 50
    new-instance v0, Lcom/android/settings/ApkIconLoader$DrawableHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/ApkIconLoader$DrawableHolder;-><init>(Lcom/android/settings/ApkIconLoader$DrawableHolder-IA;)V

    return-object v0
.end method


# virtual methods
.method public abstract isNull()Z
.end method

.method public abstract setImage(Ljava/lang/Object;)V
.end method

.method public abstract setImageView(Landroid/widget/ImageView;)Z
.end method
