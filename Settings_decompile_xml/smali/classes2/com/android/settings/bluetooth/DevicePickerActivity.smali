.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 37
    sget p1, Lcom/android/settings/R$layout;->bluetooth_device_picker:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void
.end method
