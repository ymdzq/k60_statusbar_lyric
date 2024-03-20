.class Lmiuix/autodensity/DensityProcessor$DensityCallback;
.super Ljava/lang/Object;
.source "DensityProcessor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/autodensity/DensityProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DensityCallback"
.end annotation


# instance fields
.field private mActivityRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mDecorViewListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

.field final synthetic this$0:Lmiuix/autodensity/DensityProcessor;


# direct methods
.method public constructor <init>(Lmiuix/autodensity/DensityProcessor;Landroid/app/Activity;Lmiuix/autodensity/DensityProcessor;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->this$0:Lmiuix/autodensity/DensityProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    .line 155
    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    .line 159
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    .line 160
    iput-object p3, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    return-void
.end method


# virtual methods
.method addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method clear()V
    .locals 1

    .line 199
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 202
    :cond_0
    iget-object p0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 203
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 187
    iget-object p0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {p0, v0, p1}, Lmiuix/autodensity/DensityProcessor;->processBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->this$0:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {p1, p0}, Lmiuix/autodensity/DensityProcessor;->unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V

    :goto_1
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-eqz v0, :cond_1

    .line 177
    iget-object p0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {p0, p1, v0}, Lmiuix/autodensity/DensityProcessor;->processOnActivityDisplayChanged(ILandroid/app/Activity;)V

    goto :goto_1

    .line 179
    :cond_1
    iget-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->this$0:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {p1, p0}, Lmiuix/autodensity/DensityProcessor;->unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V

    :goto_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 0
    return-void
.end method

.method removeOnAttachStateChangeListener(Landroid/app/Activity;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnAttachStateChangeListener;

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method
