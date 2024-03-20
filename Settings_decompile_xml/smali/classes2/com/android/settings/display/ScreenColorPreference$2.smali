.class Lcom/android/settings/display/ScreenColorPreference$2;
.super Ljava/lang/Object;
.source "ScreenColorPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenColorPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenColorPreference;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenColorPreference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/android/settings/display/ScreenColorPreference$2;->this$0:Lcom/android/settings/display/ScreenColorPreference;

    iput p2, p0, Lcom/android/settings/display/ScreenColorPreference$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorPreference$2;->this$0:Lcom/android/settings/display/ScreenColorPreference;

    iget p0, p0, Lcom/android/settings/display/ScreenColorPreference$2;->val$color:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/display/ScreenColorPreference;->enablePick(IZ)V

    return-void
.end method
