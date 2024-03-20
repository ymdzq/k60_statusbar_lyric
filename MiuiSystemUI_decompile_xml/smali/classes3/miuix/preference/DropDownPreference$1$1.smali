.class public final Lmiuix/preference/DropDownPreference$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lmiuix/preference/DropDownPreference$1;

.field public final synthetic val$value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$1$1;->this$1:Lmiuix/preference/DropDownPreference$1;

    .line 2
    iput-object p2, p0, Lmiuix/preference/DropDownPreference$1$1;->val$value:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$1$1;->val$value:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lmiuix/preference/DropDownPreference$1$1;->this$1:Lmiuix/preference/DropDownPreference$1;

    .line 4
    iget-object v1, v1, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 6
    iget-object v1, v1, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$1$1;->this$1:Lmiuix/preference/DropDownPreference$1;

    .line 16
    iget-object v0, v0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 18
    iget-object v1, p0, Lmiuix/preference/DropDownPreference$1$1;->val$value:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$1$1;->this$1:Lmiuix/preference/DropDownPreference$1;

    .line 28
    iget-object v0, v0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 30
    iget-object p0, p0, Lmiuix/preference/DropDownPreference$1$1;->val$value:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method
