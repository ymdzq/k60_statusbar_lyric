.class public Lcom/android/settings/wifi/DetachWifiDialogListener;
.super Ljava/lang/Object;
.source "DetachWifiDialogListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private needFinishActivity:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/wifi/DetachWifiDialogListener;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/DetachWifiDialogListener;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetneedFinishActivity(Lcom/android/settings/wifi/DetachWifiDialogListener;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/DetachWifiDialogListener;->needFinishActivity:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActivity(Lcom/android/settings/wifi/DetachWifiDialogListener;Landroid/app/Activity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/DetachWifiDialogListener;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/DetachWifiDialogListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/android/settings/wifi/DetachWifiDialogListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/DetachWifiDialogListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/settings/wifi/DetachWifiDialogListener;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/settings/wifi/DetachWifiDialogListener;->needFinishActivity:Z

    return-void
.end method


# virtual methods
.method public clearOnDetach(Landroid/app/Dialog;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/DetachWifiDialogListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/DetachWifiDialogListener$1;-><init>(Lcom/android/settings/wifi/DetachWifiDialogListener;)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    return-void
.end method

.method public finishOnDismiss(Z)V
    .locals 3

    .line 51
    sget-object v0, Lcom/android/settings/wifi/DetachWifiDialogListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog change finishOnDismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/wifi/DetachWifiDialogListener;->needFinishActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-boolean p1, p0, Lcom/android/settings/wifi/DetachWifiDialogListener;->needFinishActivity:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 23
    sget-object p0, Lcom/android/settings/wifi/DetachWifiDialogListener;->TAG:Ljava/lang/String;

    const-string p1, "Dialog onDismiss"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
