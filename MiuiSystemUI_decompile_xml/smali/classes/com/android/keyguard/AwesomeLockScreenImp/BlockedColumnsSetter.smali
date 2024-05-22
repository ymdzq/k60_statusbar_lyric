.class public final Lcom/android/keyguard/AwesomeLockScreenImp/BlockedColumnsSetter;
.super Lcom/miui/maml/data/VariableBinderVisitor;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mColumns:[Ljava/lang/String;

.field public final mUri:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/VariableBinderVisitor;-><init>()V

    .line 2
    const-string v0, "content://sms/inbox"

    .line 5
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/BlockedColumnsSetter;->mUri:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/BlockedColumnsSetter;->mColumns:[Ljava/lang/String;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final visit(Lcom/miui/maml/data/VariableBinder;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/miui/maml/data/ContentProviderBinder;

    .line 6
    invoke-virtual {p1}, Lcom/miui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/BlockedColumnsSetter;->mUri:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/BlockedColumnsSetter;->mColumns:[Ljava/lang/String;

    .line 23
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    .line 25
    :cond_1
    return-void
    .line 28
.end method
