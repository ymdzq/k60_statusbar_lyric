.class public Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "BluetoothTextWhiteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextWhiteList:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 32
    sget p0, Lcom/android/settings/R$layout;->bluetooth_text_white_list_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->add_text_app_package_name:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onDestroyView()V

    return-void
.end method

.method public onSave()V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;->mTextWhiteList:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.xiaomi.bluetooth.thirdapp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "BluetoothTextWhiteListFragment"

    const-string v1, "On save failed"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onSave()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStart()V

    .line 39
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;->mTextWhiteList:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 46
    sget p2, Lcom/android/settings/R$id;->bluetooth_text_white_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;->mTextWhiteList:Landroid/widget/EditText;

    const-string p2, ""

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;->mTextWhiteList:Landroid/widget/EditText;

    new-instance p2, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;)V

    invoke-direct {p2, v0}, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher;-><init>(Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher$Inputcallback;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;->mTextWhiteList:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
