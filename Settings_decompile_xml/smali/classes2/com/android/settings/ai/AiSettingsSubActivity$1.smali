.class Lcom/android/settings/ai/AiSettingsSubActivity$1;
.super Ljava/lang/Object;
.source "AiSettingsSubActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ai/AiSettingsSubActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ai/AiSettingsSubActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ai/AiSettingsSubActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsSubActivity$1;->this$0:Lcom/android/settings/ai/AiSettingsSubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/ai/AiSettingsSubActivity$1;->this$0:Lcom/android/settings/ai/AiSettingsSubActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
