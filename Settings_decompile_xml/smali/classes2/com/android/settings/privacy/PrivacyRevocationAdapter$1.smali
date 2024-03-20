.class Lcom/android/settings/privacy/PrivacyRevocationAdapter$1;
.super Ljava/lang/Object;
.source "PrivacyRevocationAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 62
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$1;->this$0:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    iput-object p2, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$1;->val$privacyItem:Lcom/android/settings/privacy/PrivacyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$1;->this$0:Lcom/android/settings/privacy/PrivacyRevocationAdapter;

    invoke-static {p1}, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->-$$Nest$fgetmContext(Lcom/android/settings/privacy/PrivacyRevocationAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/settings/privacy/PrivacyRevocationSettings;

    .line 67
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$1;->val$privacyItem:Lcom/android/settings/privacy/PrivacyItem;

    invoke-virtual {p1, p0}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->handleClick(Lcom/android/settings/privacy/PrivacyItem;)V

    return-void
.end method
