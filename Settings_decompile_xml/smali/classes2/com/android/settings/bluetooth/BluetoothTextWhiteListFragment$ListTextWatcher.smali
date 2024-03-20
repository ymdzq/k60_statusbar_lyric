.class public Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher;
.super Ljava/lang/Object;
.source "BluetoothTextWhiteListFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTextWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher$Inputcallback;
    }
.end annotation


# instance fields
.field public mInputcallback:Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher$Inputcallback;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher$Inputcallback;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher;->mInputcallback:Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher$Inputcallback;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 107
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher;->mInputcallback:Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher$Inputcallback;

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher$Inputcallback;->nullContent(Z)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
