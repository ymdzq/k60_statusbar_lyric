.class Lcom/android/settings/emergency/ui/SosExitAlertActivity$MyTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "SosExitAlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/emergency/ui/SosExitAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTransitionListener"
.end annotation


# instance fields
.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/emergency/ui/SosExitAlertActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V
    .locals 1

    .line 267
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 268
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$MyTransitionListener;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;Lcom/android/settings/emergency/ui/SosExitAlertActivity$MyTransitionListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$MyTransitionListener;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$MyTransitionListener;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    if-eqz p0, :cond_0

    .line 275
    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->-$$Nest$fgetmFingerVerifyDialog(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)Lcom/android/settings/emergency/ui/view/FullScreenDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 276
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method
