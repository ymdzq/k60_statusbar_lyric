.class Lcom/android/settings/OwnerInfoSettings$2;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/OwnerInfoSettings;->-$$Nest$fputmIsChanged(Lcom/android/settings/OwnerInfoSettings;Z)V

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
