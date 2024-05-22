.class public final Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/provider/MiuiSettings$Global;->isOpenSecondSpaceStatusIcon(Landroid/content/ContentResolver;)Z

    .line 10
    move-result v0

    .line 13
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSecondSpaceStatusIconVisible:Z

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateSecondSpace()V

    .line 18
    return-void
    .line 21
.end method
