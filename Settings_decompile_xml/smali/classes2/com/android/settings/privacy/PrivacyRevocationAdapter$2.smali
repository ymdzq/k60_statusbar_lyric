.class Lcom/android/settings/privacy/PrivacyRevocationAdapter$2;
.super Ljava/lang/Object;
.source "PrivacyRevocationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacy/PrivacyRevocationAdapter;->onBindViewHolder(Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

.field final synthetic val$privacyItem:Lcom/android/settings/privacy/PrivacyItem;


# direct methods
.method constructor <init>(Lcom/android/settings/privacy/PrivacyRevocationAdapter;Lcom/android/settings/privacy/PrivacyItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$2;->this$0:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    iput-object p2, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$2;->val$privacyItem:Lcom/android/settings/privacy/PrivacyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$2;->this$0:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    invoke-static {p1}, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->-$$Nest$fgetlistener(Lcom/android/settings/privacy/PrivacyRevocationAdapter;)Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$2;->this$0:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    invoke-static {p1}, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->-$$Nest$fgetlistener(Lcom/android/settings/privacy/PrivacyRevocationAdapter;)Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$2;->val$privacyItem:Lcom/android/settings/privacy/PrivacyItem;

    invoke-interface {p1, p0}, Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;->onItemClick(Lcom/android/settings/privacy/PrivacyItem;)V

    :cond_0
    return-void
.end method
