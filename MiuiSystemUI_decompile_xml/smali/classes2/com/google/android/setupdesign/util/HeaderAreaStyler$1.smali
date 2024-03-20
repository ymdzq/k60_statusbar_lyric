.class public final Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;->val$imageView:Landroid/widget/ImageView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;->val$imageView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;->val$imageView:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;->val$imageView:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v0

    .line 24
    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable;

    .line 25
    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;->val$imageView:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 34
    instance-of v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 35
    if-nez v0, :cond_1

    .line 37
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 39
    const-string/jumbo v1, "userdebug"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    const-string v1, "eng"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "To achieve scaling icon in SetupDesign lib, should use vector drawable icon from "

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/google/android/setupdesign/util/HeaderAreaStyler$1;->val$imageView:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 81
    const-string v0, "HeaderAreaStyler"

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    const/4 p0, 0x1

    .line 87
    return p0
    .line 88
.end method
