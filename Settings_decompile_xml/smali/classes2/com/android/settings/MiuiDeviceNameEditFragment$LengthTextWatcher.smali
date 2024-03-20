.class public Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;
.super Ljava/lang/Object;
.source "MiuiDeviceNameEditFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiDeviceNameEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthTextWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;
    }
.end annotation


# instance fields
.field public mInputcallback:Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;

.field private mLastString:Ljava/lang/String;

.field private mMaxLength:I


# direct methods
.method public constructor <init>(ILcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;->mMaxLength:I

    .line 258
    iput-object p2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;->mInputcallback:Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;->mInputcallback:Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;->nullContent(Z)V

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;->mMaxLength:I

    if-le v0, v1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;->mLastString:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;->mLastString:Ljava/lang/String;

    .line 279
    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;->mInputcallback:Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;

    invoke-interface {p0, p1}, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;->beyondLimit(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 263
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;->mLastString:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
