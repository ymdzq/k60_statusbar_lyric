.class Lcom/android/settings/notification/SilentModeRuleSettings$1;
.super Ljava/lang/Object;
.source "SilentModeRuleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SilentModeRuleSettings;->customActionBar(Lmiuix/appcompat/app/ActionBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SilentModeRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SilentModeRuleSettings;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleSettings$1;->this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleSettings$1;->this$0:Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
